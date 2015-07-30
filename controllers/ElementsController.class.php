<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$id = 1;
		$type = 1;

		$infos = Info::getElements($id, $type);

		$vars = array (
			'infos' => $infos
		);

		$this->render('elements', $vars);
	}

}