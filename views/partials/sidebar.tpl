 <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="{$HTTP_ROOT}home/index"><img src="{$IMG_ROOT}logo.jpg" alt="logo" width="80%"></a>
                </li>
            {foreach $pages as $page_url => $page}
                {if !is_array($page)}
                <li{if $page_url == $current_page || $page_url == $target || $page_url == "$target/$action"} class="active"{/if}><a href="{$HTTP_ROOT}{$page_url}">{$page}</a></li>
                {else}
                <li class="dropdown{if $page_url == $current_page || $page_url == $target || $page_url == "$target/$action"} active{/if}">
                    <a href="{$page_url}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{$page[0]} <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        {foreach $page[1] as $subpage_url => $subpage}
                        <li><a href="{$HTTP_ROOT}{$subpage_url}">{$subpage}</a></li>
                        {/foreach}
                    </ul>
                </li>
                {/if}
            {/foreach}
            {if !empty($user) && User::isLogged()}
                <li><a class="blog-nav-item">{t}Logged as{/t} {$user->pseudo}</a></li>
                <li><a href="{$HTTP_ROOT}logout" class="blog-nav-item{if $current_page == 'user/logout/'} active{/if}">{t}Logout{/t}</a></li>
            {else}
                <li{if $current_page == 'user/login/'} class="active"{/if}><a href="{$HTTP_ROOT}login" class="blog-nav-item">{t}Login{/t}</a></li>
                <li{if $current_page == 'user/register/'} class="active"{/if}><a href="{$HTTP_ROOT}register" class="blog-nav-item">{t}Register{/t}</a></li>
            {/if}
                <form action="{$HTTP_ROOT}search" class="navbar-form navbar-left" role="search">
                    <input type="hidden" name="qs" value="1">
                    <div class="form-group">
                        <input name="q" type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
