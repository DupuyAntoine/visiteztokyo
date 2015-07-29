<?php

class List extends Model {

	protected $id;
	protected $quarter_id;
	protected $name;
	protected $type;
	protected $description;
	protected $url;
	protected $rating;
	protected $theme;

	public function getId() {
		return $this->id;
	}
	public function getQId() {
		return $this->quarter_id;
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
	public function getUrl() {
		return $this->url;
	}
	public function getRating() {
		return $this->rating;
	}
	public function getTheme() {
		return $this->theme;
	}

	public function getSlug() {
		return $this->id.'-'.strtolower($this->name);
	}

	public function setId($id) {
		$this->id = $id;
	}
	public function setQId() {
		return $this->quarter_id;
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
	public function setUrl() {
		return $this->url;
	}
	public function setRating() {
		return $this->rating;
	}
	public function setTheme() {
		return $this->theme;
	}

}