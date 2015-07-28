		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Accueil</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Les Quartiers <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Akihabara</a></li>
								<li><a href="#">Asakusa</a></li>
								<li><a href="#">Harajuku</a></li>
								<li><a href="#">Ikebukuro</a></li>
								<li><a href="#">Roppongi</a></li>
								<li><a href="#">Shinjuku</a></li>
								<li><a href="#">Shibuya</a></li>
								<li><a href="#">Tsukiji</a></li>
								<li><a href="#">Ueno</a></li>
							</ul>
						</li>
						<li><a href="#">Quartier aléatoire <span class="sr-only">(current)</span></a></li>
						<li><a href="#">Recherche</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Photos des membres</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						{if !empty($user) && User::isLogged()}
							{t}Logged as{/t} {$user->firstname}
							<li><a href="{$HTTP_ROOT}logout" class="blog-nav-item{if $current_page == 'user/logout/'} active{/if}">{t}Logout{/t}</a></li>
						{else}
							<li{if $current_page == 'user/login/'} class="active"{/if}><a href="{$HTTP_ROOT}login" class="blog-nav-item">{t}Login{/t}</a></li>
							<li{if $current_page == 'user/register/'} class="active"{/if}><a href="{$HTTP_ROOT}register" class="blog-nav-item">{t}Register{/t}</a></li>
						{/if}
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</ul>
				</div><!-- /.navbar-collapse -->

				

			</div><!-- /.container-fluid -->
		</nav>
