{assign var=entity value=${$entity_name}}

<!-- CAROUSEL -->
<div class="col-md-6">

	<div id="{$entity_name}-slider" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			{$i = 0}
			{foreach $entity->getPictures() as $picture}
			<li data-target="#{$entity_name}-slider" data-slide-to="{$i}"{if $i == 0} class="active"{/if}></li>
			{assign var=i value=$i + 1}
			{/foreach}
		</ol>

		<div class="carousel-inner" role="listbox">
			{$i = 0}
			{foreach $entity->getPictures() as $picture}
			<div class="item{if $i == 0} active{/if}">
				<img src="{$picture->src}" alt="{$entity_name}">
			</div>
			{assign var=i value=$i + 1}
			{/foreach}
		</div>
		<a class="left carousel-control" href="#{$entity_name}-slider" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#{$entity_name}-slider" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>


<!--
	<div id="{$entity_name}-slider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#{$entity_name}-slider" data-slide-to="0" class="active"></li>
			<li data-target="#{$entity_name}-slider" data-slide-to="1"></li>
			<li data-target="#{$entity_name}-slider" data-slide-to="2"></li>
			<li data-target="#{$entity_name}-slider" data-slide-to="3"></li>
			<li data-target="#{$entity_name}-slider" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img src="http://localhost/visiteztokyo/public/statics/img/Akihabara/map_akihabara.jpg" alt="quarter">
			</div>
			<div class="item">
				<img src="http://localhost/visiteztokyo/public/statics/img/Akihabara/histoire.jpg" alt="quarter">
			</div>
			<div class="item">
				<img src="http://localhost/visiteztokyo/public/statics/img/Akihabara/histoire_1.jpg" alt="quarter">
			</div>
			<div class="item">
				<img src="http://localhost/visiteztokyo/public/statics/img/Akihabara/histoire_2.jpg" alt="quarter">
			</div>
			<div class="item">
				<img src="http://localhost/visiteztokyo/public/statics/img/Akihabara/akihabara.jpg" alt="quarter">
			</div>

		</div>
		<a class="left carousel-control" href="#{$entity_name}-slider" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#{$entity_name}-slider" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
-->

</div>
<!-- END CAROUSEL -->
