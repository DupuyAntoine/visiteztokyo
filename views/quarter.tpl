{include file="partials/header.tpl"}

{include file="partials/carousel.tpl" entity_name="quarter"}

<div class="col-md-6">
  {$quarter->map}
</div>

<div class="col-md-6">
	<h3>{$quarter->name}</h3>
	<p>{$quarter->description}</p>
</div>
<div class="clearfix"></div>

<hr>

<div class="button-center">
	<a href="{$HTTP_ROOT}wall" role="button" class="btn btn-danger">Photo des membres</a>
</div>

<hr>

<div class="row">
	{foreach $types as $type_id => $type_label}
	<div class="col-xs-6 col-sm-4">
		<div class="thumbnail">
			<div class="ele-img">
				<a href="{$HTTP_ROOT}elements/{$quarter->id}-{Utils::cleanString($type_label)}">
					<img src="{$quarter->getRandomInfoPicture($type_id)->src}" alt="">
				</a>
			</div>
			<div class="caption">
				<h4 class="text-center"><a href="{$HTTP_ROOT}elements/{$quarter->id}-{Utils::cleanString($type_label)}">{$type_label}</a></h4>
			</div>
		</div>
	</div>
	{/foreach}
</div>

<div class="clearfix"></div>

{include file="partials/comment.tpl" quarter_id=$quarter->id}

{include file="partials/footer.tpl"}
