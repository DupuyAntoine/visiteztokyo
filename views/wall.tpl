{include file="partials/header.tpl"}

<br>

<div id="main_area">
	<!-- Slider -->
	<div class="row">

		<div class="col-sm-6" id="slider-thumbs">
			<!-- Bottom switcher of slider -->
			<ul class="hide-bullets">

				{$i = 0}
				{foreach $pictures as $picture}

					<li class="col-sm-3">
						<a class="thumbnail" id="carousel-selector-{$i}"><img src="{$picture->src}" style="height: 120px"></a>
					</li>
					{if $i == 17}
						{break}
					{/if}
					{assign var=i value=$i + 1}
				{/foreach}

			</ul>
		</div>

		<div class="col-sm-6">
			<div class="col-xs-12" id="slider">
				<!-- Top part of the slider -->
				<div class="row">
					<div class="col-sm-12" id="carousel-bounding-box">
						<div class="carousel slide" id="myCarousel">
							<!-- Carousel items -->
							<div class="carousel-inner">

								{$i = 0}
								{foreach $pictures as $picture}

									<div class="item{if $i == 0} active{/if}" data-slide-number="{$i}">
										<img src="{$picture->src}" style="height: 700px">
									</div>
									{if $i == 17}
										{break}
									{/if}
									{assign var=i value=$i + 1}
								{/foreach}

							</div>
							<!-- Carousel nav -->
							<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
							</a>
							<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/Slider-->
	</div>

</div>

<br>

{include file="partials/footer.tpl"}