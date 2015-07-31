<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$id = $this->getParam(0, 0);
		$type_label = $this->getParam(1, '');

		$labels = Info::$type_labels;

		$type_label = ucfirst(str_replace('-', ' ', $type_label));

		$type = array_search($type_label, $labels);

		$infos = Info::getElements($id, $type);

		$vars = array (
			'infos' => $infos,
			'labels' => $labels
		);

		$this->render('elements', $vars);
	}

}