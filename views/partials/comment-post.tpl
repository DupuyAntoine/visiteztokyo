{if !empty($comments)}
{foreach $comments as $comment}

<div class="list-group">
	{if !empty ($comment->src)}
	<img class="comment-img" src="{$comment->src}">
	{/if}
	<div>
		<h4 class="list-group-item-heading">{$comment->pseudo}</h4>
		<p class="list-group-item-text">{$comment->content}</p>
	</div>
</div>
{/foreach}
{/if}