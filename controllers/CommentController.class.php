<?php

class CommentController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function view() {

		$comments = Comment::getList('SELECT * FROM comment WHERE quarter_id = :quarter_id OR info_id = :info_id');

		$vars = array(
			'comment' => $comment
		);

		$this->render('comment', $vars);

	}

}

/*
$sql = 'SELECT c.content, c.date, u.pseudo, p.src 
FROM (info i OR quarter q) 
LEFT JOIN comment c ON (c.info_id = i.id OR c.quarter_id = q.id) 
LEFT JOIN photo p ON (p.id = i.photo_id OR p.id = q.photo_id) 
LEFT JOIN user u ON p.user_id = u.user_id';

$sql = 'SELECT c.content, c.date, u.pseudo, p.src 
FROM info i 
LEFT JOIN comment c ON c.info_id = i.id 
LEFT JOIN photo p ON p.id = i.photo_id 
LEFT JOIN user u ON p.user_id = u.user_id';

$sql = 'SELECT c.content, c.date, u.pseudo, p.src 
FROM quarter q 
LEFT JOIN comment c ON c.quarter_id = q.id 
LEFT JOIN photo p ON p.id = q.photo_id 
LEFT JOIN user u ON p.user_id = u.user_id';

$sql = 'SELECT c.content FROM info i LEFT JOIN comment c ON c.info_id = i.id';
$sql = 'SELECT u.pseudo FROM comment c LEFT JOIN u.id = c.user_id';
$sql = 'SELECT p.src FROM info i LEFT JOIN p.info_id = i.id';

$sql = 'SELECT c.content FROM quarter q LEFT JOIN comment c ON c.quarter_id = i.id';
$sql = 'SELECT u.pseudo FROM comment c LEFT JOIN u.id = c.user_id';
$sql = 'SELECT p.src FROM quarter q LEFT JOIN p.quarter_id = i.id';



SELECT c.content, c.date, u.pseudo, p.src
FROM quarter q 
LEFT JOIN info i ON i.quarter_id = q.id
LEFT JOIN comment c ON c.quarter_id = q.id
LEFT JOIN user u ON c.user_id = u.id
LEFT JOIN photo p ON p.id = c.photo_id
WHERE c.info_id = i.id
AND q.id = :quarter_id
AND i.id = :info_id
AND c.info_id IS NOT NULL
*/