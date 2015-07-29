<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$id = 2;
		$type = 4;

		$infos = Elements::getElements($id, $type);

		$vars = array (
			'infos' => $infos
		);

		$this->render('elements', $vars);
	}

}