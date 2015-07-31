+<?php

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
<<<<<<< HEAD
		$types = Info::$type_labels;

		$vars = array(
			'quarter' => $quarter,
			'types' => $types
=======
		$labels = Info::$type_labels; 

		$vars = array(
			'quarter' => $quarter,
			'labels' => $labels		
>>>>>>> b24c376b76c2ffc43ef63d0e8e0ee33a1a74bf63
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