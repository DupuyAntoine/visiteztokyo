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
		return $this->name;
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
	public function setUserId($id) {
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

}
