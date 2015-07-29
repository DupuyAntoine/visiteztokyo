<?php
require_once '../../config/core.conf.php';

function globRecursive($path, $find) {
    $dh = opendir($path);
    while (($file = readdir($dh)) !== false) {
        if (substr($file, 0, 1) == '.') continue;
        $rfile = "{$path}/{$file}";
        if (is_dir($rfile)) {
            foreach (globRecursive($rfile, $find) as $ret) {
              yield $ret;
            }
        } else {
            if (fnmatch($find, $file)) yield $rfile;
        }
    }
    closedir($dh);
}

header('Content-type: text/html; charset='.Lang::$encoding);

$types = array(
  'restaurant' => 1,
  'hotel' => 2,
  'histoire' => 3,
  'historique' => 3,
  'lieux_visiter' => 4,
  'lieux_a_visiter' => 4
);

$quarters_query = Db::select('SELECT id, name FROM quarter ORDER BY name ASC');

$quarters = array();
foreach($quarters_query as $quarter) {
  $quarters[$quarter['id']] = $quarter['name'];
}

$folder = 'C:/xampp/htdocs/visiteztokyo/public/statics/img/';

$glob_files = globRecursive($folder, '*');

$files = array();
$errors = array();
foreach($glob_files as $key => $value) {

  if (strpos($value, '.jpg') === false &&
      strpos($value, '.jpeg') === false) {
    continue;
  }

  foreach($quarters as $quarter_id => $quarter_name) {

    if (strpos($value, $quarter_name) !== false) {

      if (empty($files[$quarter_id])) {
        $files[$quarter_id] = array();
      }

      $find_type = false;
      foreach($types as $type_name => $type_id) {

        if (strpos($value, $type_name) !== false) {

          $find_type = true;

          if (empty($files[$quarter_id][$type_id])) {
            $files[$quarter_id][$type_id] = array();
          }

          $sub_folder = trim(str_replace($folder.'/'.$quarter_name.'/'.$type_name, '', $value), '/');
          $sub_folder = ucwords(Utils::cleanString(dirname($sub_folder), ' '));


          if (empty($sub_folder)) {
            $files[$quarter_id][$type_id][0][] = $value;
            continue;
          }

          $info = Db::selectOne('SELECT id, name FROM info WHERE name LIKE :name', array('name' => '%'.$sub_folder.'%'));

          if (!empty($info)) {

            //echo $sub_folder.' => '.print_r($info['id'], true).'<br>';

            if (empty($files[$quarter_id][$type_id][$info['id']])) {
              $files[$quarter_id][$type_id][$info['id']] = array();
            }
            $files[$quarter_id][$type_id][$info['id']][] = $value;
          } else {
            $errors[] = $sub_folder;
          }

        }
      }

      if (!$find_type) {
        $files[$quarter_id][0][] = $value;
      }

    }
  }
}

$i = 0;
foreach($files as $quarter_id => $quarter) {

  foreach($quarter as $type => $info) {

    foreach($info as $info_id => $value) {

      if (!is_array($value)) {
        $value = array($value);
      }
      foreach($value as $image) {

        $src = trim(str_replace($folder, '', $image), '/');
        $info_id = $info_id ?: 'NULL';

        $bindings = array(
          'quarter_id' => $quarter_id,
          'src' => $src
        );

        //echo '<pre>'.print_r($bindings, true).'</pre>';

        $result = Db::insert('INSERT INTO photo SET quarter_id = :quarter_id, src = :src, info_id = '.$info_id, $bindings);

        echo 'Quarter = '.$quarter_id.'; Type = '.$type.'; Info = '.$info_id.'; Value = '.$src.'; Result = '.(!empty($result) ? 'OK' : 'NOK').'<br>';

        $i++;
      }
    }
  }
}

echo '<pre>';

echo 'COUNT >> '.$i.'<br>';
//print_r($files);
echo 'ERRORS >> '.print_r($errors, true);

echo '</pre>';

