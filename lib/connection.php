<?php
class Connection {
    
    protected $db;

    public function __construct() {
        try {
            // Create (connect to) SQLite database in file
            $this->db = new PDO('sqlite:MyProfile.db');
            
            // Set error mode to exceptions
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            // If there is an error, catch the exception and display the error message
            echo "Failed to connect to the SQLite database: " . $e->getMessage();
        }
        
    }

    public function getProfile($key,$type='basic') {
        // fetch profile information
        $tbl_profile = $this->db->query("SELECT * FROM profile WHERE key = '$key' AND type = '$type'");
        $profile = $tbl_profile->fetchObject();
        return $profile->value;
    }

    public function getIcon() {
        $tbl_profile = $this->db->query("SELECT * FROM profile WHERE key = 'icon'");
        $icons = $tbl_profile->fetchAll(PDO::FETCH_OBJ);
        return $icons;
    }
}
