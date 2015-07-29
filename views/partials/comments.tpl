<hr>

<form>
	<div class="form-group">
		<label for="pseudo">Pseudo</label>
		<input type="text" class="form-control" id="pseudo" placeholder="Pseudonyme">
	</div>
	<div class="form-group">
		<label for="file">Photo à télécharger</label>
		<input type="file" id="file" class="col-">
		<p class="help">Taille limite de 360x360 pixels.</p>
	</div>
	<div class="form-group">
		<label for="rating" class="col-">Notation</label>
		<span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
        <span class="glyphicon glyphicon-star-empty col-"></span>
	</div>
	<div class="form-group">
		<label for="message" class="col-">
		<textarea id="message" class="form-control col-"></textarea>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>

<hr>

<div class="list-group">
	<div class="col-md-8">
		<!-- <a href="#" class="list-group-item"> -->
		<h4 class="list-group-item-heading">Author</h4>
		<!-- </a> -->
		<p class="list-group-item-text">Comment</p>
	</div>
	<div class="col-md-4">
		<img height="60" width="60" src="" align="right">
	</div>
</div>