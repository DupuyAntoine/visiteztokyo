{include file="partials/header.tpl"}

    <div class="row" >
        <ul class="thumbnails">
            {foreach $quarters as $quarter}
            <div class="col-md-4">
                <div class="thumbnail">
                        <img src="http://placehold.it/320x200" alt="ALT NAME" class="img-responsive" />
                    <div class="caption">
                        <h3>{$quarter->name}</h3>
                        <p>Description</p>
						<a href="{$HTTP_ROOT}quarter/{$quarter->getSlug()}">Voir le quartier</a>
                    </div>
                </div>
            </div>
            {/foreach}
       </ul>
    </div>

{include file="partials/footer.tpl"}
