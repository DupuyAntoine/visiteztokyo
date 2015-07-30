<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$params = $this->getParams();
		$id = 1;
		$type = 2;

		$infos = Info::getElements($id, $type);
		$labels = Info::$type_labels;

		$vars = array (
			'infos' => $infos,
			'labels' => $labels
		);

		$this->render('elements', $vars);
	}

}