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

	public static function getRandom() {
		return new Quarter(Db::selectOne('SELECT * FROM quarter ORDER BY RAND() LIMIT 1'));
	}

}

