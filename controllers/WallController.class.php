<?php

class WallController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$this->render('wall');
	}

}