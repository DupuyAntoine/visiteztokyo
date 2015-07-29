<?php

class InfoController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$id = $this->getParam(0, 0);

		if (empty($id)) {
			exit('Undefined info id');
		}

		$info = Info::get($id);

		$vars = array(
			'info' => $info
		);

		$this->render('info', $vars);

	}

}