{include file="partials/header.tpl"}

{include file="partials/carousel.tpl"}

{*
id
quarter_id
name
type
description
url
rating
theme
*}

<div class="col-md-6">
	<p>{$info->description}</p>
</div>
<div class="clearfix"></div>

<hr>

<div class="button-center">
	<a href="{$HTTP_ROOT}wall" role="button" class="btn btn-danger">Photo des membres</a>
</div>

<hr>

{include file="partials/comments.tpl"}

{include file="partials/footer.tpl"}