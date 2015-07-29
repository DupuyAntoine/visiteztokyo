{include file="partials/header.tpl"}

    <div class="row">
        <ul class="thumbnails">
            {foreach $quarters as $quarter}
            <div class="col-md-4">
                <div class="thumbnail">
                        <img src="{$quarter->getPicture()}" alt="ALT NAME" class="img-responsive" style="max-height: 300px" />
                    <div class="caption homecontent">
                        <h3>{$quarter->name}</h3>
                        <p>{$quarter->type}</p>
						<a href="{$HTTP_ROOT}quarter/{$quarter->getSlug()}">Voir le quartier</a>
                    </div>
                </div>
            </div>
            {/foreach}
       </ul>
    </div>

{include file="partials/footer.tpl"}

