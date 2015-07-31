<?php

global $routes;

$routes = array(

	#### Front ####

	'/' => array(
		'target' => DEFAULT_CONTROLLER_TARGET,
		'action' => DEFAULT_CONTROLLER_ACTION
	),
	'quarter/random' => array(
		'target' => 'quarter',
		'action' => 'random'
	),
	'quarter/([0-9]+)-?([a-zA-Z-_]*)'  => array(
		'target' => 'quarter',
		'action' => 'view'
	),
	'search' => array(
		'target' => 'search',
		'action' => 'results'
	),
	'elements/([0-9]+)-?([a-zA-Z-_]*)' => array(
        'target' => 'elements',
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
	'info/([0-9]+)-?([0-9a-zA-Z-_]*)' => array(
		'target' => 'info',
		'action' => 'view'
	),

	##### Backoffice ####

	/* Contact */
	'admin/contact/([a-zA-Z-_]+)/?([0-9]*)' => array(
		'target' => 'admin',
		'action' => 'contact_action'
	),

	/* Post */
	'admin/post/([a-zA-Z-_]+)/?([0-9]*)' => array(
		'target' => 'admin',
		'action' => 'post_action'
	)
);