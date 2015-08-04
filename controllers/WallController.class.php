<?php

class WallController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$page = !empty($this->getParam(0, 0)) ? (int) $this->getParam(0, 0) : 1;

		//$pictures = Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE user_id IS NOT NULL ORDER BY id DESC');

		$sql = 'SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE user_id IS NOT NULL ORDER BY id DESC';
		$bindings = array();

		$pagination = new Pagination($sql, $bindings, 20, $page - 1);
		$results = $pagination->getResults();
		foreach($results as $result) {
			$pictures[] = new Picture($result);
		}

		$vars = array (
			'pictures' => $pictures,
			'page' => $page,
			'count_pages' => $pagination->getPagesCount(),
			'count_total' => $pagination->getTotalCount()
		);

		$this->render('wall', $vars);
	}

}