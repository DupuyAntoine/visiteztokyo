{if !isset($quarter_id)}
	{assign var=quarter_id value=''}
{/if}
{if !isset($info_id)}
	{assign var=info_id value=''}
{/if}

{if !empty($errors)}
	<div class="alert alert-danger" role="danger">{t}Please fix the following errors{/t}</div>
{/if}


<form action="{$HTTP_ROOT}comment/insert" method="POST">

	<input type="hidden" name="quarter_id" value="{$quarter_id}">
	<input type="hidden" name="info_id" value="{$info_id}">

	<div class="form-group">
		<label for="file">Photo à télécharger</label>
		<input type="file" id="file" name="file" >
		<p class="help">Taille limite de 360x360 pixels.</p>
	</div>
	<!--
	<div class="form-group">
		<label for="rating">Notation</label>
		<span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
	</div>
	-->
	<div class="form-group">
		<label for="content">
		<textarea name="content" id="content" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>

{include file="partials/comment-post.tpl"}