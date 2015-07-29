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

		echo $quarter_id;

		//$quarter = Quarter::get($quarter_id);

		$this->render('quarter');

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