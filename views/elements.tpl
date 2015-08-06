{include file="partials/header.tpl"}

<br>

<div class="row">

	<div class="col-xs-12 text-center">

		<!-- construction route/slug dans main.js -->
		<form id="form-elements" class="form-inline" action="" method="POST">

			<div class="form-group col-xs-12 col-sm-3 col-sm-offset-3">
				<label for="quarter">&nbsp;&nbsp;&nbsp;Quartier&nbsp;</label>
				<select id="quarter" name="quarter" type="text" class="form-control" onchange="$('#form-elements').submit();">
					{foreach $quarters as $quarter}
						<option value="{$quarter->id}" {if $quarter->id == $id}selected="selected"{/if}>{$quarter->name}</option>
					{/foreach}
				</select>
			</div>

			<div class="form-group col-xs-12 col-sm-3">
				<label for="label">&nbsp;&nbsp;&nbsp;Type&nbsp;</label>
				<select id="label" name="label" type="text" class="form-control" onchange="$('#form-elements').submit();">
				{foreach $labels as $label}
					<option value="{Utils::cleanString($label)}" {if $label == $type_label}selected="selected"{/if}>{$label}</option>
				{/foreach}
				</select>
			</div>

		</form>

	</div>

</div>

<br><br>

<div class="row">

	{foreach $infos as $info}
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 clearfix">

		<div class="thumbnail">
			<img src="{$info->getPicture()->src}" alt="image" class="img-responsive" style="width: 100%; max-height: 180px">
			<div class="caption">
				<h4 class="text-center"><a href="{$HTTP_ROOT}info/{$info->getSlug()}">{$info->name}</a></h4>
				<p class="text-center">{$info->theme}</p>
				<div class="text-center">
					{for $i=1 to 5}
						{if $i <= $info->rating}
							<i class="fa fa-star rating-up"></i>
						{else}
							<i class="fa fa-star rating-back"></i>
						{/if}
					{/for}
				</div>
			</div>
		</div>

	</div>
	{/foreach}

</div>

<!--<div class="clearfix"></div>-->

<div class="row">

	<div class="col-xs-12 text-center">

		{if $count_pages > 1}
			{include file="partials/pagination.tpl" uri="{$HTTP_ROOT}elements/{$id}-{Utils::cleanString($type_label)}/"}
		{/if}

	</div>

</div>

<br>

{include file="partials/footer.tpl"}
<!--style="max-height:150px;margin-left: 0px;margin-right: 0px;width: 100%;"-->
