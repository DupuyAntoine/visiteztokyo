{include file="partials/header.tpl"}

<div class="row">

	<div class="col-md-12">

		<br><br>
		<form class="form-inline" action="" method="GET">

			<div class="form-group">
				<label class="sr-only"></label>
				<p class="form-control-static">Rechercher par </p>
			</div>

			<div class="form-group">
				<label for="title">&nbsp;&nbsp;&nbsp;Type&nbsp;</label>
				<select id="genre" name="genre" class="form-control">
					<option value="">Restaurants</option>
					<option value="">a</option>
					<option value="">b</option>
					<option value="">c</option>
					<option value="">d</option>
				</select>
			</div>

			<div class="form-group">
				<label for="title">&nbsp;&nbsp;&nbsp;Quartier&nbsp;</label>
				<select id="genre" name="genre" class="form-control">
					<option value="">Akihabara</option>
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
				</select>
			</div>

			<div class="form-group">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit" class="btn btn-default">&nbsp;GO !&nbsp;</button>
			</div>

		</form>
		<br><br>

	</div>

</div>

<div class="row">

	{foreach $infos as $info}

	<div class="col-sm-6 col-md-4 col-lg-3">

		<div class="thumbnail">
			<img src="{$info->getPicture()}" alt="image" class="img-responsive">
			<div class="caption">
				<h4 class="text-center"><a href="{$HTTP_ROOT}info/{$info->getSlug()}">{$info->name}</a></h4>
				<p class="text-center">{$info->theme}</p>
				<p class="text-center">Rating</p>
			</div>
		</div>

	</div>

	{/foreach}

</div>

<br>

{include file="partials/footer.tpl"}
