<?php
	class pagina{
		private $db;
		public  $url;
		public  $titel;
		public  $tekst;
		public  $banners;
		public function __construct($conn){
			$this->db = $conn;
			$banner = new banner();
			$banner->url = "http://www.bannermaken.nl/images/logo.gif";
			$banner->alt_tag = "een leuke afbeelding";
			$this->banners = $banner;
		}
		public function getPageInfo($f_url){
			$query = "SELECT * FROM paginas WHERE url = '" . $this->db->real_escape_string($f_url) . "'";
			$result = $this->db->query($query);
			if($result->num_rows > 0){
				if($row = (object)$result->fetch_assoc()){
					$this->titel = $row->titel;
					$this->tekst = $row->tekst;
					$this->banners->url = $row->banner_url;
					$this->banners->alt_tag = $row->banner_alt_tekst;
				}
			} else{
				$this->titel = "Pagina niet gevonden";
				$this->tekst = "<h1>Pagina niet gevonden!</h1>";
			}
		}
	}
?>