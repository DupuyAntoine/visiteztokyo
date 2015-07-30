<?php

class Search extends Model {

    public function getQuarters() {
      return Quarter::getList('SELECT id, name, description FROM quarter WHERE name LIKE %name% OR description LIKE %description%');
    }
    public function getInfos() {
      return Info::getList('SELECT id, name, description, quarter_id FROM info WHERE name LIKE %name% OR description LIKE %description%');
    }

