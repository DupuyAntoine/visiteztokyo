<?php

class Info extends Model {

	protected $id;
	protected $quarter_id;
	protected $name;
	protected $type;
	protected $description;
	protected $url;
	protected $rating;
	protected $theme;

	const INFO_TYPE_RESTAURANT = 1;
	const INFO_TYPE_HOTEL = 2;
	const INFO_TYPE_HISTOIRE = 3;
	const INFO_TYPE_LIEU = 4;

	public static $type_labels = array(
		self::INFO_TYPE_RESTAURANT => 'Restaurant',
		self::INFO_TYPE_HOTEL => 'Hotel',
		self::INFO_TYPE_LIEU => 'Lieu a visiter',
		self::INFO_TYPE_HISTOIRE => 'Historique'
	);

	public function getId() {
		return $this->id;
	}
	public function getQuarterId() {
		return $this->quarter_id;
	}
	public function getName() {
		return ucfirst($this->name);
	}
	public function getType() {
		return $this->type;
	}
	public function getDescription() {
		return Utils::linkifyHashtag(nl2br($this->description));
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
	public function setQuarterId($quarter_id) {
		$this->quarter_id = $quarter_id;
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

	public static function getTypeLabel($type) {
		if (!empty(self::$type_labels[$type])) {
			return self::$type_labels[$type];
		}
		return '';
	}
}