<?php

global $routes;

$routes = array(
	/* Front */
	'/' => array(
		'target' => DEFAULT_CONTROLLER_TARGET,
		'action' => DEFAULT_CONTROLLER_ACTION
	),
	'quarter/([0-9a-zA-Z\-]+)'  => array(
		'target' => 'quarter',
		'action' => 'view'
	),
	'search' => array(
		'target' => 'search',
		'action' => 'results'
	),
	'login' => array(
		'target' => 'user',
		'action' => 'login'
	),
	'register' => array(
		'target' => 'user',
		'action' => 'register'
	),
	'logout' => array(
		'target' => 'user',
		'action' => 'logout'
	),


	/* Backoffice */
	'admin/contact/edit/([0-9\-]+)' => array(
		'target' => 'admin',
		'action' => 'contact_edit'
	),
	'admin/contact/delete/([0-9\-]+)' => array(
		'target' => 'admin',
		'action' => 'contact_delete'
	)
);