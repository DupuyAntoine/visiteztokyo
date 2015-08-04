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
		return $this->user_id;
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
		/*$result = Db::selectOne('SELECT src FROM photo WHERE user_id = :user_id', array('user_id' => $this->user_id));
		return new Picture($result);*/
		return Picture::get($this->photo_id);
	}

	public function insert() {

		$vars = array(
			'id' => (int) $this->id,
			'user_id' => (int) $this->user_id,
			'content' => $this->content,			
			'photo_id' => (int) $this->photo_id,
		);

		if (!empty($this->quarter_id)) {
			$vars['quarter_id'] = (int) $this->quarter_id;			
		}
		if (!empty($this->info_id)) {
			$vars['info_id'] = (int) $this->info_id;
		}

		return Db::insert(
			'INSERT INTO comment (id, user_id, content, quarter_id, info_id, photo_id, date)
		 	 VALUES (:id, :user_id, :content, '.(!empty($this->quarter_id) ? ':quarter_id' : 'NULL').', '.(!empty($this->info_id) ? ':info_id' : 'NULL').', :photo_id, NOW())', 
		 	 $vars			
		);
	}


	public function setId($id) {
		$this->id = $id;
	}
	public function setUserId($user_id) {
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
