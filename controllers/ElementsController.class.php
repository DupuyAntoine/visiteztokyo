<?php

class ElementsController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$info_id = 1;
		$type = 2;

		//Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE quarter_id = :quarter_id ORDER BY id ASC', array('quarter_id' => $this->id))
		$infos = Elements::getList('SELECT id, quarter_id, name, type, description, url, rating, theme FROM info WHERE quarter_id = :quarter_id AND type = :type ORDER BY id ASC', array('quarter_id' => $this->id,
												  'type' => $this->type	));

		$vars = array (
			'info' => $infos
		)

		$this->render('list-elements', $vars);
	}

}