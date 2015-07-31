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