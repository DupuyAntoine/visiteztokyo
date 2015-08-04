<?php

class InfoController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$id = (int) $this->getParam(0, 0);

		if (empty($id)) {
			throw new Exception('Undefined info id');
		}

		$info = Info::get($id);

		if (empty($info)) {
			throw new Exception('Undefined info');			
		}

		$comments = $info->getComments();

		$vars = array(
			'info' => $info,
			'comments' => $comments
		);

		$this->render('info', $vars);

	}

}