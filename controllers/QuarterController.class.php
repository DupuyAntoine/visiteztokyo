<?php

class QuarterController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$quarter_param = $this->getParam(0, '');

		$quarter_id = 0;
		$quarter_name = '';
		if (!empty($quarter_param)) {
			list($quarter_id, $quarter_name) = explode('-', $quarter_param);
		}

		$id = $this->getParam(0, 0);

		if (empty($id)) {
			exit('Undefined info id');
		}

		$quarter = Quarter::get($id);

		$vars = array(
			'quarter' => $quarter
		);

		$this->render('quarter', $vars);

	}

	public function random() {

		$quarter = Quarter::getList('SELECT * FROM quarter ORDER BY RAND() LIMIT 1');

		$vars = array(
			'quarter' => $quarter,
		);

		//$quarter = Quarter::get($quarter_id);

		$this->render('quarter', $vars);

	}
}