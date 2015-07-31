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

$sql = 'SELECT c.content, c.date, u.pseudo, p.src  FROM (info i OR quarter q) LEFT JOIN comment c ON (c.info_id = i.id OR c.quarter_id = q.id) LEFT JOIN photo p ON (p.id = i.photo_id OR p.id = q.photo_id) LEFT JOIN user u ON p.user_id = u.user_id';
