<?php

class InfoController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$id = (int) $this->getParam(0, 0);

		if (empty($id)) {
			exit('Undefined info id');
		}

		$info = Info::get($id);

		$comments = $info->getComments();

		$vars = array(
			'info' => $info,
			'comments' => $comments
		);

		$this->render('info', $vars);

	}

}