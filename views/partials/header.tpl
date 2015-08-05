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

	<link rel="stylesheet" href="{$CSS_ROOT}simple-sidebar.css" >
	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}bootstrap-theme.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}font-awesome.min.css">
	<link rel="stylesheet" href="{$CSS_ROOT}styles.css">
</head>
<body>
	<header style="text-align : center" >

	</header>

	<div id="wrapper">

			{include file="partials/sidebar.tpl"}

        <div id="page-content-wrapper">

            <div class="container-fluid">

                <div class="row">

                		<div class="col-lg-12">

                				<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">
                					<img src="{$IMG_ROOT}mini_logo.png" alt="logo" width="100%" class="logo" hidden>
                					<span class="glyphicon glyphicon-chevron-left"></span>
                				</a>
