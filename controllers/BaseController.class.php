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

		$vars['pages'] = array(
			array('url' => 'index', 'name' => Lang::_('Accueil')),
			array('url' => 'quarter', 'name' => Lang::_('Quartier')),
			array('url' => 'search', 'name' => Lang::_('Search')),
			array('url' => 'contact', 'name' => Lang::_('Contact')),
			array('url' => 'quarter/info', 'name' => Lang::_('Lieu')),
			array('url' => 'random/quarter', 'name' => Lang::_('Quartier aléatoire')),
			array('url' => 'photo', 'name' => Lang::_('Photos des membres')),
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