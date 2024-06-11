<?php
class Connection {
    
    protected $db;

    public function __construct() {
        $this->db = new PDO('sqlite:MyProfile.db');
    }

    public function getProfile($key,$type='basic') {
        // fetch profile information
        $tbl_profile = $this->db->query("SELECT * FROM profile WHERE key = '$key' AND type = '$type'");
        $profile = $tbl_profile->fetchObject();
        return $profile->value;
    }
}
