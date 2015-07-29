<?php

class HomeController extends BaseController {

	public function index() {

		$page = (int) $this->getParam(0, 1);

		$pagination = new Pagination('SELECT * FROM post ORDER BY date DESC', array(), 4, $page - 1);

		$vars = array(
			'title' => 'Blog',
			'description' => 'Description'
		);

		$this->render('index', $vars);
	}

}