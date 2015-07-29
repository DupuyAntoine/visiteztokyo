<?php

class HomeController extends BaseController {

	public function index() {

		$vars = array(
			'title' => 'Blog',
			'description' => 'Description',
			'type' => 'Type'
		);

		$this->render('index', $vars);
	}

}