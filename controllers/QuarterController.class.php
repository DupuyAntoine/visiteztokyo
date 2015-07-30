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
		$labels = Info::$type_labels; 

		$vars = array(
			'quarter' => $quarter,
			'labels' => $labels		
		);

		$this->render('quarter', $vars);
	}


	public function random() {
		
		$quarter = Quarter::getRandom();		
		
		$vars = array(
			'quarter' => $quarter,
		);

		//$quarter = Quarter::get($quarter_id);

		$this->render('quarter', $vars);

	}
}