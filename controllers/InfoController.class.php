<?php

class InfoController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$vars = array(
			'id' => $id,
			'quarter_id' => $quarter_id,
			'name' => $name,
			'type' => $type,
			'description' => $description,
			'url' => $url,
			'rating' => $rating,
			'theme' => $theme
		);

		$this->render('info', $vars);

	}

}