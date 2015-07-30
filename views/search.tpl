{include file="partials/header.tpl"}
		<div class="blog-header">
			<h1 class="blog-title">{t}Search{/t}</h1>
			<p class="lead blog-description">...</p>
		</div>

		<div class="row">

			<div class="col-8 blog-main">

				<form id="form-search" action="{$HTTP_ROOT}search/results" method="GET">
				  <input type="hidden" name="as" value="1">
					<label for="search">Recherche</label>
						<div class="col-md-3 input-group">
							<input name="q" type="text" class="form-control" placeholder="{t}Search{/t}..." value="">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
								</button>
							</span>
						</div>
					<label for="quarter">Quartier</label>
						<div class="col-md-3 input-group ">
							<select name="quarter" type="text" class="form-control" placeholder="{t}Quartier{/t}..." onchange="$('#form-search').submit();">
								<option value="">...</option>
								{foreach $quarters as $_quarter}
								<option value="{$_quarter->id}"{if $_quarter->id == $quarter} selected{/if}>{$_quarter->name}</option>
								{/foreach}

							</select>
						</div>
					<label for="type">Type</label>
						<div class="col-md-3 input-group ">
							<select name="type" type="text" class="form-control" placeholder="{t}Type{/t}..." onchange="$('#form-search').submit();">

								<option value="">...</option>
								{foreach $types as $type_id => $type_label}
								<option value="{$type_id}"{if $type_id == $type} selected{/if}>{$type_label}</option>
								{/foreach}
							</select>
						</div>
					<label for="theme">Thème</label>
						<div class="col-md-3 input-group ">
							<select name="theme" type="text" class="form-control" placeholder="{t}Thème{/t}..." onchange="$('#form-search').submit();">

								<option value="">...</option>
								{foreach $themes as $_theme}
								<option value="{$_theme}"{if $_theme == $theme} selected{/if}>{$_theme|ucfirst}</option>
								{/foreach}
							</select>
						</div>
				</form>

				{if !empty($qs) || !empty($as)}

				<hr>

				<h1>{if $count_total == 0}{t}No result{/t}{else}{$count_total} {if $count_total > 1}{t}results{/t}{else}{t}result{/t}{/if}{/if} {t}for the search{/t}{if !empty($search_query)} "{$search_query}"{/if}</h1>

				<hr>

				{foreach $infos as $info}
					{$info->name}
					<hr>
				{/foreach}


				{include file="partials/pagination.tpl" querystring="?q={$search_query}&quarter={$quarter}&type={$type}&theme={$theme}&qs={$qs}&as={$as}"}

				{/if}

			</div><!-- /.blog-main -->
		</div><!-- /.row -->

{include file="partials/footer.tpl"}
