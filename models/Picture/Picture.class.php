<?php
class Picture extends Model {
	
	protected $id;
	protected $quarter_id;
	protected $src;
	protected $info_id;
	protected $user_id;

	public function getId() {
		return $this->id;
	}
	public function getQuarterId() {
		return $this->quarter_id;
	}
	public function getSrc() {
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
}