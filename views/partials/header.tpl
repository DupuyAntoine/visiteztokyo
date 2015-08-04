<!DOCTYPE html>
<html lang="{$lang}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="{$website_description}">
	<meta name="author" content="{$author}">
	<link rel="icon" type="image/png" href="{$IMG_ROOT}favicon.png">

	<title>{$website_title} - {$title}</title>

	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap-theme.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}styles.css">
</head>
<body>
	<header style="text-align : center" >
		<a href="{$HTTP_ROOT}home/index"><img src="{$IMG_ROOT}logo.jpg" alt="logo"/></a>

		{include file="partials/navbar.tpl"}

	</header>

	<div class="container-fluid">
