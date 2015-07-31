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


{foreach $types as $type_id => $type_label}
<div class="col-sm-6 col-md-4 col-lg-3">
	<div class="thumbnail">
		<img src="{$quarter->getRandomInfoPicture($type_id)->src}" alt="" class="img-responsive">
		<div class="caption">
			<h4 class="text-center"><a href="{$HTTP_ROOT}elements/{$quarter->id}-{Utils::cleanString($type_label)}">{$type_label}</a></h4>
			<p>{$type_label}</p>
			<p>Description<p>
			<p>Rating</p>
		</div>
	</div>
</div>
{/foreach}

<div class="clearfix"></div>

{include file="partials/comment.tpl"}

{include file="partials/footer.tpl"}
