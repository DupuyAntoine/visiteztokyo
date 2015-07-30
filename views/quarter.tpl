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

{foreach $infos as $info}
<div class="col-sm-6 col-md-6 col-lg-3">
	<div class="thumbnail">
		<img src="{$info->getPicture()}" alt="{$info->name}" class="img-responsive">
		<div class="caption">
			<h4 class="text-center"><a href="{$HTTP_ROOT}elements">{$infos->type_label}</a></h4>
		</div>
	</div>
</div>
{/foreach}

<div class="clearfix"></div>

{include file="partials/comment.tpl"}

{include file="partials/footer.tpl"}
