{include file="partials/header.tpl"}

{include file="partials/carousel.tpl"}

<div class="col-md-6">
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</div>
<div class="clearfix"></div>

<hr>

<div class="button-center">
	<a href="{$HTTP_ROOT}wall" role="button" class="btn btn-danger">Photo des membres</a>
</div>

<hr>

<div class="col-sm-6 col-md-4 col-lg-3">
	<div class="thumbnail">
		<img src="http://placehold.it/162x100" alt="nom" class="img-responsive">
		<div class="caption">
			<h4 class="text-center"><a href="{$HTTP_ROOT}list-elements">Nom élément</a></h4>
			<p>Type</p>
			<p>Description<p>
			<p>Rating</p>
		</div>
	</div>
</div>

<div class="clearfix"></div>

{include file="partials/comments.tpl"}

{include file="partials/footer.tpl"}