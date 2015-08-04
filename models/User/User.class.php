<?php
class User extends Model {

	protected $id;
	protected $pseudo;
	protected $firstname;
	protected $lastname;
	protected $email;
	protected $confirm_email;
	protected $password;
	protected $confirm_password;
	protected $status;
	protected $newsletter;
	protected $cgu;
	protected $register_date;

	private $session;

	public function __construct($data = array()) {
		parent::__construct($data);

		$this->session = Session::getInstance();
	}

	/* Getters */
	public function getId() {
		return $this->id;
	}	
	public function getPseudo() {
		return $this->pseudo;
	}
	public function getFirstname() {
		return $this->firstname;
	}
	public function getLastname() {
		return $this->lastname;
	}

	public function getEmail() {
		return $this->email;
	}
	public function getConfirmEmail() {
		return $this->confirm_email;
	}
	public function getPassword() {
		return $this->password;
	}
	public function getConfirmPassword() {
		return $this->confirm_password;
	}
	public function getStatus() {
		return $this->status;
	}
	public function getNewsletter() {
		return $this->newsletter;
	}
	public function getCgu() {
		return $this->cgu;
	}
	public function getRegisterDate() {
		return $this->register_date;
	}

	/* Setters */
	public function setId($id) {
		$this->id = $id;
	}

	public function setFirstname($firstname) {
		if (empty($firstname)) {
			throw new Exception(Lang::_('You must fill your firstname'));
		}
		$this->firstname = $firstname;
	}
	public function setLastname($lastname) {
		if (empty($lastname)) {
			throw new Exception(Lang::_('You must fill your lastname'));
		}
		$this->lastname = $lastname;
	}
	public function setPseudo($pseudo) {
		if (empty($pseudo)) {
			throw new Exception(Lang::_('You must fill your pseudo'));
		}
		$this->pseudo = $pseudo;
	}
	public function setEmail($email) {
		if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
			throw new Exception(Lang::_('You must provide a valid email'));
		}
		$this->email = $email;
	}
	public function setConfirmemail($confirm_email) {
		if (empty($confirm_email) || !filter_var($confirm_email, FILTER_VALIDATE_EMAIL)) {
			throw new Exception(Lang::_('You must provide a valid email'));
		}
		$this->confirm_email = $confirm_email;
	}
	public function setPassword($password) {
		if (strlen($password) < 6) {
			throw new Exception(Lang::_('You must profide a password with at least 6 chars'));
		}
		$this->password = $password;
	}	
	public function setConfirmPassword($confirm_password) {
		if (strlen($confirm_password) < 6) {
			throw new Exception(Lang::_('You must profide a password with at least 6 chars'));
		}
		$this->confirm_password = $confirm_password;
	}
	public function setStatus($status) {
		$this->status = $status;
	}
	public function setNewsletter($newsletter) {
		$this->newsletter = $newsletter;
	}
	public function setCgu($cgu) {
		if (empty($cgu)) {
			throw new Exception(Lang::_('You have to accept the terms of service'));
		}
		$this->cgu = $cgu;
	}
	public function setRegisterDate($register_date) {
		$this->register_date = $register_date;
	}

	/* Misc */
	public static function isLogged() {
		return Session::getInstance()->user_id;
	}

	public function checkRememberMe() {

		$remember_me = Authent::getRememberMe();

		if ($remember_me !== false) {

			$user_id = $remember_me;

			$user = self::get($user_id);

			if (!empty($user)) {
				return $user->login();
			}
		}

		return false;
	}

	public function checkLogin($remember_me = false) {

		$result = Db::selectOne('SELECT * FROM user WHERE email = :email', array('email' => $this->email));


		if (!empty($result)) {

			$user = new User($result);

			$crypted_password = $user->password;

			if (password_verify($this->password, $crypted_password)) {

				if (!empty($remember_me)) {
					Authent::setRememberMe($user->id);
				}

				return $user->login();
			}
		}
		return false;
	}

	public function checkAlreadyExists() {
		if (empty($this->email)) {
			return false;
		}
		$user = Db::select('SELECT * FROM user WHERE email = :email', array('email' => $this->email));
		if (!empty($user)) {
			return true;
		}
		return false;
	}

	public function getLoginForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form('', 'form-login', $action, 'POST', 'form-horizontal', $errors, $isPost);
		$form->addField('email', Lang::_('Email'), 'email', $this->_getfieldvalue('email', $type, $request), true, '', !empty($errors['authent']) ? true : false);
		$form->addField('password', Lang::_('Password'), 'password', '', true, '', !empty($errors['authent']) ? true : false);
		$form->addField('remember_me', Lang::_('Remember me'), 'checkbox', $this->_getfieldvalue('remember_me', $type, $request), false, '');

		return $form;
	}

	public function login() {
		if (!$this->session->isActive()) {
			return false;
		}
		$this->session->user_id = $this->id;
		$this->session->firstname = $this->firstname;
		return true;
	}

	public function getRegisterForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form('', 'form-register', $action, 'POST', 'form-horizontal', $errors, $isPost);
		$form->addField('firstname', Lang::_('Firstname'), 'text', $this->_getfieldvalue('firstname', $type, $request), true, '', @$errors['firstname']);
		$form->addField('lastname', Lang::_('Lastname'), 'text', $this->_getfieldvalue('lastname', $type, $request), true, '', @$errors['lastname']);
		$form->addField('pseudo', Lang::_('Pseudo'), 'text', $this->_getfieldvalue('pseudo', $type, $request), true, '', @$errors['pseudo']);
		$form->addField('email', Lang::_('Email'), 'email', $this->_getfieldvalue('email', $type, $request), true, '', @$errors['email']);
		$form->addField('confirm_email', Lang::_('Confirm email'), 'email', $this->_getfieldvalue('confirm_email', $type, $request), true, '', @$errors['confirm_email']);
		$form->addField('password', Lang::_('Password'), 'password', '', true, '', @$errors['password']);
		$form->addField('confirm_password', Lang::_('Confirm password'), 'password', '', true, '', @$errors['confirm_password']);
		$form->addField('newsletter', Lang::_('Subscribe to the newsletter'), 'checkbox', $this->_getfieldvalue('newsletter', $type, $request), false, '');
		$form->addField('cgu', Lang::_('Accept the terms of service'), 'checkbox', $this->_getfieldvalue('cgu', $type, $request), true, '', @$errors['cgu']);

		return $form;
	}
	public function getForm($type, $action, $request, $isPost = false, $errors = array()) {

		$form = new Form($id = 'form-user', $name = 'form-user', $action, 'POST', 'form-horizontal', $isPost);
		$form->addField('id', Lang::_('Id'), 'text', $this->_getfieldvalue('id', $type, $request), true, '', @$errors['id']);
		$form->addField('firstname', Lang::_('Firstname'), 'text', $this->_getfieldvalue('firstname', $type, $request), true, '', @$errors['firstname']);
		$form->addField('lastname', Lang::_('Lastname'), 'text', $this->_getfieldvalue('lastname', $type, $request), true, '', @$errors['lastname']);
		$form->addField('pseudo', Lang::_('Pseudo'), 'text', $this->_getfieldvalue('pseudo', $type, $request), true, '', @$errors['pseudo']);
		$form->addField('email', Lang::_('Email'), 'email', $this->_getfieldvalue('email', $type, $request), true, '', @$errors['email']);
		$form->addField('confirm_email', Lang::_('Confirm email'), 'email', $this->_getfieldvalue('confirm_email', $type, $request), true, '', @$errors['confirm_email']);
		$form->addField('password', Lang::_('Password'), 'password', '', true, '', @$errors['password']);
		$form->addField('confirm_password', Lang::_('Confirm password'), 'password', '', true, '', @$errors['confirm_password']);
		$form->addField('newsletter', Lang::_('Subscribe to the newsletter'), 'checkbox', $this->_getfieldvalue('newsletter', $type, $request), false, '');
		$form->addField('cgu', Lang::_('Accept the terms of service'), 'checkbox', $this->_getfieldvalue('cgu', $type, $request), true, '', @$errors['cgu']);

		
		return $form->render();
	}

	public function insert() {

		return Db::insert(
			'INSERT INTO user (firstname, lastname, pseudo, email, confirm_email , password , confirm_password , newsletter , cgu)
		 	 VALUES (:firstname, :lastname, :pseudo, :email, :confirm_email , :password , :confirm_password , :newsletter , :cgu)',
			array(
				'id' => (int) $this->id,
				'firstname' => $this->firstname,
				'lastname' => $this->lastname,
				'pseudo' => $this->pseudo,
				'email' => $this->email,
				'confirm_email' => $this->confirm_email,
				'password' => $this->password,
				'confirm_password' => $this->confirm_password,
				'newsletter' => (int) $this->newsletter,
				'cgu' => (int) $this->cgu,
			)
		);
	}

	public function update() {

		if (empty($this->id)) {
			throw new Exception('Update error - Undefined comment id');
		}

		return Db::update(
			'UPDATE user SET id = :id, firstname = :firstname, lastname = :lastname, pseudo = :pseudo, email = :email ,  confirm_email = :confirm_email, password = :password, confirm_password = :confirm_password , newsletter = :newsletter, cgu = :cgu
		 	 WHERE id = :id',
			array(
				'id' => (int) $this->id,
				'firstname' => $this->firstname,
				'lastname' => $this->lastname,
				'pseudo' => $this->pseudo,
				'email' => $this->email,
				'confirm_email' => $this->confirm_email,
				'password' => $this->password,
				'confirm_password' => $this->confirm_password,
				'newsletter' => (int) $this->newsletter,
				'cgu' => (int) $this->cgu,
			)
		);
	}

	public function delete() {

		if (empty($this->id)) {
			throw new Exception('Delete error - Undefined comment id');
		}

		return Db::delete('DELETE FROM comment WHERE id = :id', array('id' => $this->id));
	}



	public function register() {
		return Db::insert(
		   'INSERT INTO user (lastname, firstname, pseudo, email, password, newsletter, cgu, register_date)
			VALUES (:lastname, :firstname, :pseudo, :email, :password, :newsletter, :cgu, NOW())',
			array(
				'lastname' => $this->lastname,
				'firstname' => $this->firstname,
				'pseudo' => $this->pseudo,
				'email' => $this->email,
				'password' => $this->password,
				'newsletter' => $this->newsletter,
				'cgu' => $this->cgu
			)
		);
	}

	public function getFacebookUser($register_url) {

		$fb_user = API_Facebook::getUser($register_url);

		if (empty($fb_user) || !is_object($fb_user)) {
			return false;
		}

		foreach($this->getFields() as $key => $value) {
			if (property_exists($fb_user, $key)) {
				$this->$key = $fb_user->$key;
			}
		}

		// @FIXME
		$this->password = password_hash($this->fb_id.'-'.$this->email, PASSWORD_BCRYPT);

		$fb_user = Db::selectOne('SELECT * FROM user WHERE fb_id = :fb_id', array('fb_id' => $this->fb_id));
		if (!empty($fb_user)) {
			$user = new User($fb_user);
			return $user->login();
		}

		$this->id = $this->facebookRegister();
		if (!empty($this->id)) {
			return $this->login();
		}
	}

	public function facebookRegister() {
		return Db::insert(
			'INSERT INTO user SET firstname = :firstname, lastname = :lastname, email = :email, password = :password, fb_id = :fb_id, cgu = 1, register_date = NOW()
			 ON DUPLICATE KEY UPDATE firstname = :firstname, lastname = :lastname, email = :email, password = :password, fb_id = :fb_id, cgu = 1',
			 array(
				'fb_id' => $this->fb_id,
				'firstname' => $this->firstname,
				'lastname' => $this->lastname,
				'email' => $this->email,
				'password' => $this->password
			 )
		);
	}


}