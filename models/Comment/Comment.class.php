<?php

class Comment extends Model {

	protected $id;
	protected $user_id;
	protected $quarter_id;
	protected $content;
	protected $info_id;
	protected $photo_id;

	public function getId() {
		return $this->id;
	}
	public function getUserId() {
		return $this->user_id;
	}
	public function getQuarterId() {
		return $this->quarter_id;
	}
	public function getContent() {
		return $this->content;
	}
	public function getInfoId() {
		return $this->info_id;
	}
	public function getPhotoId() {
		return $this->photo_id;
	}
	public function getPicture() {
		$result = Db::selectOne('SELECT src FROM photo WHERE user_id = :user_id', array('user_id' => $this->id));
		return new Picture($result);
	}

	public function setId($id) {
		$this->id = $id;
	}
	public function setUserId($user_id) {
		$this->user_id = $user_id;
	}	
	public function setQuarterId($quarter_id) {
		$this->quarter_id = $quarter_id;
	}
	public function setContent($content) {
		$this->content = $content;
	}
	public function setInfoId($info_id) {
		$this->info_id = $info_id;
	}
	public function setPhotoId($photo_id) {
		$this->photo_id = $photo_id;
	}

	public function getForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form($id = 'form-comment', $name = 'form-comment', $action, 'POST', 'form-horizontal', $isPost);
		$form->addField('user_id', Lang::_('User Id'), 'text', $this->_getfieldvalue('user_id', $type, $request), true, '', @$errors['user_id']);
		$form->addField('quarter_id', Lang::_('Quarter Id'), 'text', $this->_getfieldvalue('quarter_id', $type, $request), false, '', @$errors['quarter_id']);
		$form->addField('info_id', Lang::_('Info Id'), 'text', $this->_getfieldvalue('info_id', $type, $request), false, '', @$errors['info_id']);
		$form->addField('content', Lang::_('Content'), 'text', $this->_getfieldvalue('content', $type, $request), true, '', @$errors['content']);
		$form->addField('photo_id', Lang::_('Photo Id'), 'file', $this->_getfieldvalue('photo_id', $type, $request), false);
		
		return $form->render();
	}

	public function insert() {

		return Db::insert(
			'INSERT INTO comment (user_id, quarter_id, info_id, content, photo_id)
		 	 VALUES (:user_id, :quarter_id, :info_id, :content, :photo_id,)',
			array(
				'id' => (int) $this->id,
				'user_id' => $this->user_id,
				'quarter_id' => $this->quarter_id,
				'info_id' => $this->info_id,
				'content' => (int) $this->content,
				'photo_id' => (int) $this->photo_id,
			)
		);
	}

	public function update() {

		if (empty($this->id)) {
			throw new Exception('Update error - Undefined comment id');
		}

		return Db::update(
			'UPDATE comment SET user_id = :user_id, quarter_id = :quarter_id, info_id = :info_id, content = :content, photo_id = :photo_id
		 	 WHERE id = :id',
			array(
				'id' => (int) $this->id,
				'user_id' => $this->user_id,
				'quarter_id' => $this->quarter_id,
				'info_id' => $this->info_id,
				'content' => (int) $this->content,
				'photo_id' => (int) $this->photo_id,
			)
		);
	}

	public function delete() {

		if (empty($this->id)) {
			throw new Exception('Delete error - Undefined comment id');
		}

		return Db::delete('DELETE FROM comment WHERE id = :id', array('id' => $this->id));
	}

}
