<?php
class Picture extends Model {

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

	public static function getDefault($type = null) {
		$picture = new Picture();
		switch($type) {
			case Info::INFO_TYPE_HOTEL:
				$picture->src = 'http://aixpress-design.fr/wp-content/uploads/2015/05/largshotellogo256.png';
			break;
			default:
				$picture->src = 'http://placehold.it/320x200';
			break;
		}

		return $picture;
	}
}
