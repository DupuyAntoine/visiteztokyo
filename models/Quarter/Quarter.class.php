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


}	