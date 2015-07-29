<?php

class Quarter extends Model {

	protected $id;
	protected $name;
	protected $type;
	protected $description;

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
	public function setDescription($description) {
		$this->description = $description;
	}

	public function getPictures() {
		return Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE quarter_id = :quarter_id ORDER BY id ASC', array('quarter_id' => $this->id));
	}
	public function getPicture() {
		$pictures = array();
		foreach($this->getPictures() as $picture) {
			if (empty($picture->getInfoId()) && empty($picture->getUserId())) {
				$pictures[] = $picture;
			}
		}

		if (empty($pictures)) {
			return 'http://placehold.it/320x200';
		}
		return IMG_HTTP.$pictures[array_rand($pictures)]->src;
	}

}