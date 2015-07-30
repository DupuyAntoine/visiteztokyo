<?php

//--- uniquement pour test perso elements

class Elements extends Model {

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
		return $this->id.'-'.strtolower(Utils::cleanString($this->name));
	}

	public function setId($id) {
		$this->id = $id;
	}
	public function setQId() {
		$this->quarter_id =$quarter_id;
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
	public function setUrl($url) {
		$this->url = $url;
	}
	public function setRating($rating) {
		$this->rating = $rating;
	}
	public function setTheme($theme) {
		$this->theme = $theme;
	}

	public static function getElements($id, $type) {
		return self::getList('SELECT id, quarter_id, name, type, description, url, rating, theme FROM info WHERE quarter_id = :quarter_id AND type = :type ORDER BY id ASC', array('quarter_id' => $id, 'type' => $type));
	}

}
