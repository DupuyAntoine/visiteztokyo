<?php

class WallController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$pictures = Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo ORDER BY id DESC');

		$vars = array (
			'pictures' => $pictures
		);

		$this->render('wall', $vars);
	}

}