<?php

class HomeController extends BaseController {

	public function index() {

		$vars = array(
			'title' => 'Blog',
			'description' => 'Description'
		);

		$this->render('index', $vars);
	}

}