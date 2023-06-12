<?php
class Database {
	public static $db;
	public static $con;
	function Database(){
		$this->user=getenv('user-bookmedik');$this->pass=getenv('password-bookmedik');$this->host=getenv('host-bookmedik');$this->ddbb=getenv('namebd-bookmedik');
	}

	function connect(){
		$con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
		$con->query("set sql_mode=''");
		return $con;
	}

	public static function getCon(){
		if(self::$con==null && self::$db==null){
			self::$db = new Database();
			self::$con = self::$db->connect();
		}
		return self::$con;
	}
	
}
?>
