{include file="partials/header.tpl"}

    <div class="row" >
        <ul class="thumbnails">
            {foreach $quarters as $quarter}
            <div class="col-md-4">
                <div class="thumbnail">
                        <img src="http://placehold.it/320x200" alt="ALT NAME" class="img-responsive" />
                    <div class="caption">
                        <h3>{$quarter['name']}</h3>
                        <p>Description</p>
                        
                    </div>
                </div>
            </div>
            {/foreach}
       </ul>
    </div>

    {include file="partials/pagination.tpl"}    

{include file="partials/footer.tpl"}
