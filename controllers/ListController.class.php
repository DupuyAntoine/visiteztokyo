<?php

class ListController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$this->render('list-elements');
	}

}