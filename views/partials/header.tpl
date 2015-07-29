<!DOCTYPE html>
<html lang="{$lang}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="{$website_description}">
	<meta name="author" content="{$author}">

	<title>{$website_title} - {$title}</title>

	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap-theme.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}styles.css">
</head>
<body>
	<header>
		<a href="#"><img src="http://lorempixel.com/400/200" alt="logo" /></a>
		<h1 style ="text-align : center">{$website_title}</h1>

		{include file="partials/navbar.tpl"}

	</header>

	<div class="container-fluid">
