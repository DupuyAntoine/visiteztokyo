<?php

class HomeController extends BaseController {

	public function index() {

		$vars = array(
			'title' => 'Home',
		);

		$this->render('index', $vars);
	}

}