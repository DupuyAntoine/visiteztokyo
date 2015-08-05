<?php
class Photo extends Model {

	protected $id;
	protected $quarter_id;
	protected $name;
	protected $src;
	protected $info_id;
	protected $user_id;

	public function getId() {
		return $this->id;
	}
	public function getName() {
		return $this->name;
	}
	public function getQuarterId() {
		return $this->quarter_id;
	}
	public function getSrc() {
		if (strpos($this->src, 'http://') === false) {
			return IMG_HTTP.$this->src;
		}
		return $this->src;
	}
	public function getInfoId() {
		return $this->info_id;
	}
	public function getUserId() {
		return $this->user_id;
	}

	public function setId($id) {
		$this->id = $id;
	}
	public function setName($name) {
		$this->name = $name;
	}
	public function setQuarterId($quarter_id) {
		$this->quarter_id = $quarter_id;
	}
	public function setSrc($src) {
		$this->src = $src;
	}
	public function setInfoId($info_id) {
		$this->info_id = $info_id;
	}
	public function setUserId($user_id) {
		$this->user_id = $user_id;
	}
	public function getForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form($id = 'form-picture', $name = 'form-picture', $action, 'POST', 'form-horizontal', $isPost);
		$form->addField('id', Lang::_('Picture Id'), 'text', $this->_getfieldvalue('id', $type, $request), true, '', @$errors['id']);
		$form->addField('quarter_id', Lang::_('Quarter id'), 'text', $this->_getfieldvalue('quarter_id', $type, $request), false, '', @$errors['quarter_id']);
		$form->addField('src', Lang::_('Src'), 'file', $this->_getfieldvalue('src', $type, $request), false, '', @$errors['src']);
		$form->addField('info_id', Lang::_('Info id'), 'text', $this->_getfieldvalue('info_id', $type, $request), true, '', @$errors['info_id']);
		$form->addField('user_id', Lang::_('User id'), 'text', $this->_getfieldvalue('user_id', $type, $request), true, '', @$errors['user_id']);
		
		return $form->render();
	}

	public function insert() {

		return Db::insert(
			'INSERT INTO photo (id, quarter_id, src, info_id , user_id)
		 	 VALUES (:id, :quarter_id, :src, :info_id , :user_id)',
			array(
				'id' => $this->id,
				'quarter_id' => $this->quarter_id,
				'src' => $this->src,
				'info_id' => $this->info_id,
				'user_id' => $this->user_id
			)
		);
	}

	public function update() {

		if (empty($this->id)) {
			throw new Exception('Update error - Undefined photo id');
		}

		return Db::update(
			'UPDATE photo SET quarter_id = :quarter_id, src = :src, info_id = :info_id, user_id = :user_id
		 	 WHERE id = :id',
			array(
				'quarter_id' => $this->quarter_id,
				'src' => $this->src,
				'info_id' => $this->info_id,
				'user_id' => $this->user_id,
				'id' => (int) $this->id
			)
		);
	}

	public function delete() {

		if (empty($this->id)) {
			throw new Exception('Delete error - Undefined photo id');
		}

		return Db::delete('DELETE FROM photo WHERE id = :id', array('id' => $this->id));
	}
}