<?php

class Quarter extends Model {

	protected $id;
	protected $name;
	protected $type;
	protected $description;
	protected $map;

	public function getId() {
		return $this->id;
	}
	public function getName() {
		return $this->name;
	}
	public function getType() {
		return $this->type;
	}
	public function getDescription() {
		return $this->description;
	}
	public function getMap() {
		return $this->map;
	}

	public function getSlug() {
		return $this->id.'-'.strtolower($this->name);
	}

	public function setId($id) {
		$this->id = $id;
	}
	public function setName($name) {
		$this->name = $name;
	}
	public function setType($type) {
		$this->type = $type;
	}
	public function setMap($map) {
		$this->map = $map;
	}
	public function setDescription($description) {
		$this->description = $description;
	}

	public function getPictures() {
		return Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE info_id IS NULL AND user_id IS NULL AND quarter_id = :quarter_id ORDER BY id ASC', array('quarter_id' => $this->id));
	}

	public function getPicture() {
		$pictures = array();
		foreach($this->getPictures() as $picture) {
			$pictures[] = $picture;
		}

		if (empty($pictures)) {
			$picture = Picture::getDefault();
		}
		return $pictures[array_rand($pictures)];
	}

	public function getInfoPictures($type) {
		return Picture::getList('SELECT p.src, i.name FROM info i LEFT JOIN photo p ON p.info_id = i.id WHERE p.info_id IS NOT NULL AND p.user_id IS NULL AND i.quarter_id = :quarter_id AND i.type = :type', array('quarter_id' => $this->id, 'type' => $type));
	}

	public function getRandomInfoPicture($type) {
		$pictures = $this->getInfoPictures($type);
		if (empty($pictures)) {
			$picture = Picture::getDefault($type);
			return $picture;
		}
		return $pictures[array_rand($pictures)];
	}

	public function getComments() {

		if (empty($this->id)) {
			throw new Exception('getComments error - Undefined comment id');
		}

		$results = (Object) Db::select('SELECT c.content, c.date, u.pseudo, p.src
					FROM quarter q 
					LEFT JOIN comment c ON c.quarter_id = q.id
					LEFT JOIN user u ON c.user_id = u.id
					LEFT JOIN photo p ON p.id = c.photo_id
					WHERE q.id = :quarter_id
					AND c.info_id IS NULL',
		array(
			'quarter_id' => $this->id
		));

		$comments = array();
		foreach($results as $result) {
			$comments[] = (Object) $result;
		}

		return $comments;
	}

	public static function getRandom() {
		return new Quarter(Db::selectOne('SELECT * FROM quarter ORDER BY RAND() LIMIT 1'));
	}
	public function getForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form($id = 'form-quarter', $name = 'form-quarter', $action, 'POST', 'form-horizontal', $isPost);
		$form->addField('id', Lang::_('User Id'), 'text', $this->_getfieldvalue('id', $type, $request), true, '', @$errors['user_id']);
		$form->addField('name', Lang::_('Name'), 'text', $this->_getfieldvalue('name', $type, $request), false, '', @$errors['quarter_id']);
		$form->addField('type', Lang::_('Type'), 'text', $this->_getfieldvalue('type', $type, $request), false, '', @$errors['type']);
		$form->addField('description', Lang::_('Content'), 'text', $this->_getfieldvalue('description', $type, $request), true, '', @$errors['description']);
		$form->addField('map', Lang::_('Map'), 'text', $this->_getfieldvalue('map', $type, $request), false);
		
		return $form->render();
	}

	public function insert() {

		return Db::insert(
			'INSERT INTO quarter (id, name, type, description , map)
		 	 VALUES (:id, :name, :type, :description , :map)',
			array(
				'id' => $this->id,
				'name' => $this->name,
				'type' => $this->type,
				'description' => $this->description,
				'map' => $this->map
			)
		);
	}

	public function update() {

		if (empty($this->id)) {
			throw new Exception('Update error - Undefined quarter id');
		}

		return Db::update(
			'UPDATE quarter SET name = :name, type = :type, description = :description, map = :map
		 	 WHERE id = :id',
			array(
				'name' => $this->name,
				'type' => $this->type,
				'description' => $this->description,
				'map' => $this->map,
				'id' => (int) $this->id
			)
		);
	}

	public function delete() {

		if (empty($this->id)) {
			throw new Exception('Delete error - Undefined quarter id');
		}

		return Db::delete('DELETE FROM quarter WHERE id = :id', array('id' => $this->id));
	}

}

