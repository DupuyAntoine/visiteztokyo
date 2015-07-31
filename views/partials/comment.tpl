<hr>

<form>
	<div class="form-group">
		<label for="pseudo">Pseudo</label>
		<input type="text" class="form-control" id="pseudo" placeholder="Pseudonyme">
	</div>
	<div class="form-group">
		<label for="file">Photo à télécharger</label>
		<input type="file" id="file">
		<p class="help">Taille limite de 360x360 pixels.</p>
	</div>
	<div class="form-group">
		<label for="rating">Notation</label>
		<span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
	</div>
	<div class="form-group">
		<label for="message">
		<textarea id="message" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>

<hr>

{include file="partials/comment-post.tpl"}