<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?=$page->titel?></title>
	<link rel="stylesheet" href="template/style.css">
</head>
<body>
	<div class="overflow">
	<img src="<?=$page->banners->url?>" alt="<?=$page->banners->alt_tag?>">
	</div>
	<?=$page->tekst?>
</body>
</html>