{if !empty($comments)}
{foreach $comments as $comment}

<hr>

<div class="comment-center">
	<div class="well well-lg col-md-6">
		<h4>{if !empty($comment->pseudo)}{$comment->pseudo}{else}Utilisateur inconnu{/if}</h4>
		<p>{$comment->content}</p>
	{if !empty ($comment->src)}
	</div>
	<div class="col-md-4">
		<img src="{$comment->src}">
	</div>
	{/if}
</div>
<div class="clearfix"></div>
{/foreach}
{/if}