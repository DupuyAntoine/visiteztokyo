<?php
abstract class BaseController extends Controller {

	public function __construct() {

		parent::__construct();

		$vars = array(
			'HTTP_ROOT' => ROOT_HTTP.$this->lang->getUserLang().'/',
			'CSS_ROOT' => CSS_HTTP,
			'JS_ROOT' => JS_HTTP,
			'IMG_ROOT' => IMG_HTTP,
			'referer' => REFERER,
			'uri' => $this->getUri(),
			'querystring' => $this->getQueryString(),
			'current_page' => $this->route,
			'target' => $this->target,
			'action' => $this->action,
			'lang' => $this->lang->getUserLang(),
			'website_title' => 'Visitez Tokyo',
			'website_description' => 'Website Description',
			'author' => 'Website Author',
			'title' => '',
			'description' => ''
		);

		$quarters = Quarter::getList('SELECT id, name, type FROM quarter ORDER BY name ASC');
		$pictures = Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo ORDER BY id ASC');
        $infos = Info::getList('SELECT id, quarter_id, name, type, description, url, rating, theme FROM info ORDER BY id ASC');

		$vars['quarters'] = $quarters;
		$vars['pictures'] = $pictures;
		$vars['infos'] = $infos;

		$quarter_pages = array();
		foreach($quarters as $quarter) {
			$quarter_pages['quarter/'.$quarter->getSlug()] = $quarter->name;
		}

		$vars['pages'] = array(
			'home/index' => Lang::_('Accueil'),
			'quarter' => array(	Lang::_('Les quartiers'), $quarter_pages),
			'search' => Lang::_('Search'),
			'contact' => Lang::_('Contact'),
			'quarter/random' => Lang::_('Quartier aléatoire'),
			'wall' => Lang::_('Photos des membres'),
		);

		if (User::isLogged()) {
			$vars['user'] = User::get($this->session->user_id);
		}

		$archives_dates = array();
		for($i = 0; $i < 12; $i++) {
			$time = strtotime('-'.$i.' month');
			$month_value = date('Y-m', $time);
			$month_label = ucfirst(Lang::_(strtolower(date('F', $time))));
			$year = date('Y', $time);
			$archives_dates[$month_value] = $month_label.' '.$year;
		}

		$vars['archives_dates'] = $archives_dates;

		$this->response->addVars($vars);
	}

}