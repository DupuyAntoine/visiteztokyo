<?php

class AdminController extends BaseAdminController {

	/*
	public function __construct($controller) {
		parent::__construct($controller);

		// Local stuff...
	}
	*/

	public function index() {

		$vars = array();

		$this->render('admin/index', $vars);
	}

	public function quarter() {
		return $this->base_list('quarter', array('id', 'name', 'type', 'description' , 'map'));
	}

	public function quarter_action() {
		return $this->base_action('quarter');
	}
	public function info() {
		return $this->base_list('info', array('id', 'quarter_id', 'name',  'type' , 'description' , 'url' , 'rating' , 'theme' , 'map' ));
	}

	public function info_action() {
		return $this->base_action('info');
	}
	public function comment() {
		return $this->base_list('comment', array('id', 'user_id' , 'quarter_id' ,  'content' , 'info_id' , 'photo_id'));
	}

	public function comment_action() {
		return $this->base_action('comment');
	}

	public function user() {
		return $this->base_list('user', array('id' ,'pseudo' ,'firstname' , 'lastname' , 'email' , 'password' , 'status' , 'newsletter' , 'cgu' , 'register_date' ));
	}
	public function user_action() {
		return $this->base_action('user');
	}

	public function search() {

		$vars = array();

		$this->render('admin/search', $vars);
	}

}