<?php
	include('connection.php');
	include('class/pagina.class.php');
	include('class/banners.class.php');
	if(!isset($_GET["site_url"])){
		$page = new pagina($conn);
		$page->titel = "MyFirstOopWebPage";
		$page->tekst = "<h1>Hello world</h1>";
	} else {
		$page = new pagina($conn);
		$page->getPageInfo($_GET["site_url"]);
	}
	include('template/template.php');
?>