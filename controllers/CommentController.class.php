<?php

class CommentController extends BaseController {

	public function index() {

		$this->render('index');

	}

	public function insert() {

		if (!User::isLogged()) {
			$this->response->redirect(ROOT_HTTP.'login');
		}

		$isPost = $this->request->isPost();

		$quarter_id = $this->request->post('quarter_id', null);
		$info_id = $this->request->post('info_id', null);

		$comment = new Comment();
		$comment->user_id = $this->session->user_id;

		$errors = array();
		$success = false;
		if ($isPost) {

			if (empty($quarter_id) && empty($info_id)) {
				throw new Exception('Undefined quarter/info');			
			}

			foreach($this->request->post as $key => $value) {
				try {
					if (property_exists($comment, $key)) {
						$comment->$key = $this->request->post($key, '');
					}
				} catch (Exception $e) {
					$errors[$key] = $e->getMessage();
				}
			}

			if (empty($errors)) {
				$success = $comment->insert();

				if ($success) {
					$this->response->redirect(REFERER);
				}
			}
		}

		//$form = $comment->getCommentForm('insert', ROOT_HTTP.$this->lang->getUserLang().'/comment/post', $this->request, $isPost, $errors);

		//$vars['form'] = $form;
		$vars['isPost'] = $isPost;
		$vars['errors'] = $errors;
		$vars['success'] = $success;

		$this->render('partials/comment', $vars);

	}

}