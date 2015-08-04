<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$id = $this->getParam(0, 0);
		$type_label = $this->getParam(1, 0);

		$page = !empty($this->getParam(2, 0)) ? (int) $this->getParam(2, 0) : 1;
		//$search_query = $this->request->get('q', '');

		$labels = Info::$type_labels;
		$type_label = ucfirst(str_replace('-', ' ', $type_label));
		$type = array_search($type_label, $labels);
		//$infos = Info::getElements($id, $type);
		/*
		$vars = array (
			'id' => $id,
			'type_label' => $type_label,
			'infos' => $infos,
			'labels' => $labels
		);
		*/

		$sql = 'SELECT id, quarter_id, name, type, description, url, rating, theme FROM info WHERE quarter_id = :quarter_id AND type = :type ORDER BY id ASC';
		$bindings = array(
			'quarter_id' => $id,
			'type' => $type
		);


		$pagination = new Pagination($sql, $bindings, 4, $page - 1);
		$results = $pagination->getResults();
		foreach($results as $result) {
			$infos[] = new Info($result);
		}
		//foreach ($infos as $key => $info) {
		//	$info->description=substr($info->description,0, 50);
		//}
		$vars = array(
			'id' => $id,
			'type_label' => $type_label,
			'infos' => $infos,
			'labels' => $labels,

			//'search_query' => $search_query,
			'page' => $page,
			'count_pages' => $pagination->getPagesCount(),
			'count_total' => $pagination->getTotalCount()
		);


        $this->render('elements', $vars);
    }
}