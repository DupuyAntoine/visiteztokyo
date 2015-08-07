{include file="partials/header.tpl"}

	<div class="blog-header">
		<h1 class="blog-title">{$title}</h1>
		<p class="lead blog-description">{$description}</p>
	</div>

	<div class="row">

		<div class="col-sm-8 blog-main">

			{if !empty($errors)}
			<div class="alert alert-danger" role="danger">{if !empty($errors['authent'])}{$errors['authent']}{else}{$title} {t}failed{/t}{/if}</div>
			{/if}

			{if !empty($isPost) && !empty($success)}
				<div class="alert alert-success" role="success">{$title} {t}success{/t}</div>

				{assign var=url value=$HTTP_ROOT}
				{if User::isLogged() && $user->status === 1}
					{assign var=url value="{$HTTP_ROOT}admin"}
				{/if}

				{Utils::redirectJS($url, 1)}
			{/if}

			{if isset($form) && empty($success)}
				{$form}
			{/if}

			{if !empty($fb_login_url)}
			<hr>

			<a href="{$fb_login_url}" class="btn btn-primary">{t}Connect with Facebook{/t}</a>
			{/if}

		</div>

	</div>

{include file="partials/footer.tpl"}