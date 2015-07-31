{include file="partials/header.tpl"}

<div class="row">

	<div class="col-md-12">

		<br><br>

		<form id="form-elements" class="form-inline" action="{$HTTP_ROOT}elements" method="POST">

			<div class="form-group">
				<label class="sr-only"></label>
				<p class="form-control-static">Rechercher par </p>
			</div>

			<div class="form-group">
				<label for="title">&nbsp;&nbsp;&nbsp;Quartier&nbsp;</label>
				<select id="quarter" name="quarter" type="text" class="form-control" onchange="$('#form-elements').submit();">
					{foreach $quarters as $quarter}
						<option value="{$quarter->id}" {if $quarter->id == $id}selected="selected"{/if}>{$quarter->name}</option>
					{/foreach}
				</select>
			</div>

			<div class="form-group">
				<label for="title">&nbsp;&nbsp;&nbsp;Type&nbsp;</label>
				<select id="label" name="label" type="text" class="form-control" onchange="$('#form-elements').submit();">
				{foreach $labels as $label}
					<option value="{Utils::cleanString($label)}" {if $label == $type_label}selected="selected"{/if}>{$label}</option>
				{/foreach}
				</select>
			</div>

			<!--
			<div class="form-group">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit" class="btn btn-default">&nbsp;GO !&nbsp;</button>
			</div>
			-->

		</form>

		<br><br>

	</div>

</div>

<div class="row">

	{foreach $infos as $info}
	<div class="col-sm-6 col-md-4 col-lg-3">

		<div class="thumbnail">
			<img src="{$info->getPicture()->src}" alt="image" class="img-responsive" style="width: 100%; max-height: 180px">
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
<!--style="max-height:150px;margin-left: 0px;margin-right: 0px;width: 100%;"-->