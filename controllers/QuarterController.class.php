<?php

class QuarterController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$id = (int) $this->getParam(0, 0);

		if (empty($id)) {
			exit('Undefined info id');
		}

		$quarter = Quarter::get($id);

		$comments = $quarter->getComments();

		$types = Info::$type_labels;

		$vars = array(
			'quarter' => $quarter,
			'types' => $types,
			'comments' => $comments
		);

		$this->render('quarter', $vars);
	}


	public function random() {

		$quarter = Quarter::getRandom();
		$types = Info::$type_labels;

		$comments = $quarter->getComments();

		$vars = array(
			'quarter' => $quarter,
			'types' => $types,
			'comments' => $comments
		);

		//$quarter = Quarter::get($quarter_id);

		$this->render('quarter', $vars);

	}
}
