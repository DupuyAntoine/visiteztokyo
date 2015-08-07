<?php

class SearchController extends BaseController {

	public function index() {
		return $this->results();
	}

	public function results() {

		$params = $this->getParams();

		$quick_search = $this->request->get('qs');
		$advanced_search = $this->request->get('as');

		$search_query = $this->request->get('q', '');
		$quarter = $this->request->get('quarter', '');
		$type = $this->request->get('type', '');
		$theme = $this->request->get('theme', '');

		$page = !empty($params[0]) ? (int) $params[0] : 1;

		$infos = array();
		$quarters = Quarter::getList('SELECT id, name FROM quarter ORDER BY name ASC');
		$types = Info::$type_labels;
		$themes_query = Db::select('SELECT DISTINCT(theme) FROM info WHERE theme IS NOT NULL AND theme != "" ORDER BY theme');

		$themes = array();
		foreach($themes_query as $row) {

			$_theme = $row['theme'];

			if (strpos($_theme, '|') !== false) {
				$theme_parts = explode('|', $_theme);

				foreach($theme_parts as $_theme) {
					if (!in_array($_theme, $themes)) {
						$themes[] = $_theme;
					}
				}

				continue;
			}

			$themes[] = $_theme;
		}

		$vars = array(
			'title' => 'Search',
			'description' => 'Description',

			'quarters' => $quarters,
			'types' => $types,
			'themes' => $themes,

			'page' => $page,
			'count_pages' => 0,
			'infos' => $infos,
			'count_total' => 0,
			'search_query' => $search_query,
			'quarter' => $quarter,
			'type' => $type,
			'theme' => $theme,

			'qs' => $quick_search,
			'as' => $advanced_search
		);

		$sql = 'SELECT i.* FROM quarter q LEFT JOIN info i ON i.quarter_id = q.id WHERE 1 ';
		if (!empty($search_query)) {
			$sql .= 'AND (q.name LIKE :search OR q.description LIKE :search OR i.name LIKE :search OR i.description LIKE :search) ';
			$bindings = array('search' => '%'.$search_query.'%');
		}

		if (!empty($advanced_search)) {

			if (!empty($quarter)) {
				$sql .= 'AND q.id = :quarter ';
				$bindings['quarter'] = $quarter;
			}
			if (!empty($type)) {
				$sql .= 'AND i.type = :type ';
				$bindings['type'] = $type;
			}
			if (!empty($theme)) {
				$sql .= 'AND i.theme LIKE :theme ';
				$bindings['theme'] = '%'.$theme.'%';
			}
		}

		if (!empty($bindings)) {
			$pagination = new Pagination($sql, $bindings, 10, $page - 1);

			$results = $pagination->getResults();
			foreach($results as $result) {
				$infos[] = new Info($result);
			}
			foreach ($infos as $key => $info) {
				$info->description=substr($info->description,0, 200);
			}
			$vars = array_merge($vars, array(
				'page' => $page,
				'count_pages' => $pagination->getPagesCount(),
				'infos' => $infos,
				'count_total' => $pagination->getTotalCount()
			));

		}
		$this->render('search', $vars);
	}

}
