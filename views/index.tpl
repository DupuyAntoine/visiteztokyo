{include file="partials/header.tpl"}

    <div class="row">
        <ul class="thumbnails">
            {foreach $quarters as $quarter}
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6 col-xxs-12">
                <div class="thumbnail indexdivpicture">
                    <a href="{$HTTP_ROOT}quarter/{$quarter->getSlug()}">
						<div class="picture-container" style="background-image:url({$quarter->getPicture()->src});" alt="{$quarter->name}">
						<!--<img src="{$quarter->getPicture()->src}" alt="{$quarter->name}" class="img-responsive indexpicture" style="max-height:250px;margin-left: 0px;margin-right: 0px;width: 100%;"/>-->
						</div>
                    </a>
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
