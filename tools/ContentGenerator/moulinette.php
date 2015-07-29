<?php
require_once '../../config/core.conf.php';

header('Content-type: text/html; charset='.Lang::$encoding);

$types = array(
  'restaurant'
  'hotel' => 2,
  'historique' => 3,
  'lieux_visiter' => 4
);

$quarters = Db::select('SELECT * FROM quarter ORDER BY name ASC');

print_r($quarters);
