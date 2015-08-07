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
	protected $map;
	protected $adress;
	protected $longitude;
	protected $latitude;

	const INFO_TYPE_RESTAURANT = 1;
	const INFO_TYPE_HOTEL = 2;
	const INFO_TYPE_LIEU = 4;

	public static $type_labels = array(
		self::INFO_TYPE_RESTAURANT => 'Restaurant',
		self::INFO_TYPE_HOTEL => 'Hotel',
		self::INFO_TYPE_LIEU => 'Lieu a visiter'
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
	public function getAdress() {
		return $this->adress;
	}
	public function getSlug() {
		return $this->id.'-'.strtolower(Utils::cleanString($this->name));
	}
	public function getMap() {
		return $this->map;
	}
	public function getLongitude() {
		return $this->longitude;
	}
	public function getLatitude() {
		return $this->latitude;
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
	public function setMap($map) {
		$this->map = $map;
	}
	public function setLongitude($longitude) {
		$this->longitude = $longitude;
	}
	public function setAdress($adress) {
		$this->adress = $adress;
	}
	public function setLatitude($latitude) {
		$this->latitude = $latitude;
	}

	public static function getTypeLabel($type) {
		if (!empty(self::$type_labels[$type])) {
			return self::$type_labels[$type];
		}
		return '';
	}

	public function getPictures() {
		return Picture::getList('SELECT id, quarter_id, src, info_id, user_id FROM photo WHERE user_id IS NULL AND quarter_id = :quarter_id AND info_id = :info_id ORDER BY id ASC', array('info_id' => $this->id, 'quarter_id' => $this->quarter_id));
	}

	public function getPicture() {
		$result = Db::selectOne('SELECT src FROM photo WHERE info_id = :info_id', array('info_id' => $this->id));
		if (empty($result)) {
			$picture = new Picture();
			$picture->src = 'http://placehold.it/60x60';
			return $picture;
		}
		return new Picture($result);
	}

	public function getComments() {
		if (empty($this->id)) {
			throw new Exception('getComments error - Undefined comment id');
		}

		$results = (Object) Db::select('SELECT c.content, c.date, u.pseudo, p.src
					FROM info i
					LEFT JOIN comment c ON c.info_id = i.id
					LEFT JOIN user u ON c.user_id = u.id
					LEFT JOIN photo p ON p.id = c.photo_id
					WHERE c.info_id = i.id
					AND i.id = :info_id
					AND c.info_id IS NOT NULL',
		array(
			'info_id' => $this->id
		));

		$comments = array();
		foreach($results as $result) {
			$comments[] = (Object) $result;
		}

		return $comments;

	}

	public static function getElements($id, $type) {
		return self::getList('SELECT id, quarter_id, name, type, description, url, rating, theme FROM info WHERE quarter_id = :quarter_id AND type = :type ORDER BY id ASC', array('quarter_id' => $id, 'type' => $type));
	}
public function getForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form($id = 'form-user', $name = 'form-user', $action, 'POST', 'form-horizontal', $isPost);
		$form->addField('id', Lang::_('Id'), 'text', $this->_getfieldvalue('id', $type, $request), true, '', @$errors['id']);
		$form->addField('quarter_id', Lang::_('Quarter id'), 'text', $this->_getfieldvalue('quarter_id', $type, $request), true, '', @$errors['quarter_id']);
		$form->addField('name', Lang::_('Name'), 'text', $this->_getfieldvalue('name', $type, $request), true, '', @$errors['name']);
		$form->addField('type', Lang::_('Type'), 'text', $this->_getfieldvalue('type', $type, $request), true, '', @$errors['type']);
		$form->addField('description', Lang::_('Content'), 'text', $this->_getfieldvalue('description', $type, $request), true, '', @$errors['description']);
		$form->addField('url', Lang::_('Url'), 'text', $this->_getfieldvalue('url', $type, $request), true, '', @$errors['url']);
		$form->addField('rating', Lang::_('Rating'), 'text', '', true, '', @$errors['rating']);
		$form->addField('theme', Lang::_('Theme'), 'text', $this->_getfieldvalue('theme', $type, $request), true, '', @$errors['theme']);
		$form->addField('longitude', Lang::_('Longitude'), 'text', $this->_getfieldvalue('longitude', $type, $request), true, '', @$errors['longitude']);
		$form->addField('latitude', Lang::_('Latitude'), 'text', $this->_getfieldvalue('latitude', $type, $request), true, '', @$errors['latitude']);
		$form->addField('adress', Lang::_('Adress'), 'text', $this->_getfieldvalue('adress', $type, $request), true, '', @$errors['adress']);

		
		return $form->render();
	}

	public function insert() {

		return Db::insert(
			'INSERT INTO info (id, quarter_id , name, type , description , url , rating , theme , longitude , latitude , adress )
		 	 VALUES (:id, :quarter_id , :name, :type , :description , :url , :rating , :theme , :longitude , :latitude , :adress )',
			array(
				'id' => (int) $this->id,
                'quarter_id' => $this->quarter_id,
                'name' => $this->name, 
                'type' => $this->type,
                'description' => $this->description,
                'url' => $this->url,
                'rating' => $this->rating,
                'theme' => $this->theme,
                'longitude' => $this->longitude,
                'latitude' => $this->latitude,
                'adress' => $this->adress,
             


			)
		);
	}

	public function update() {

		if (empty($this->id)) {
			throw new Exception('Update error - Undefined comment id');
		}

		return Db::update(
			'UPDATE info SET id = :id, quarter_id = :quarter_id, name = :name, type = :type, description = :description ,  url = :url, rating = :rating, theme = :theme , longitude = :longitude , latitude = :latitude , adress = :adress
		 	 WHERE id = :id',
			array(
				'id' => (int) $this->id,
                'quarter_id' => $this->quarter_id,
                'name' => $this->name, 
                'type' => $this->type,
                'description' => $this->description,
                'url' => $this->url,
                'rating' => $this->rating,
                'theme' => $this->theme,
                'longitude' => $this->longitude,
                'latitude' => $this->latitude,
                'adress' => $this->adress,
               

			)
		);
	}

	public function delete() {

		if (empty($this->id)) {
			throw new Exception('Delete error - Undefined info id');
		}

		return Db::delete('DELETE FROM info WHERE id = :id', array('id' => $this->id));
	}
}
