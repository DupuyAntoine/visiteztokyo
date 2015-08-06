<table class="table table-striped table-bordered table-hover" id="{$table->id}">
	<thead>
		<tr>
			{foreach $table->cols as $col}
			{if is_array($col)}
			<th>{$col[0]|ucfirst}</th>
			{else}
			<th>{$col|ucfirst}</th>
			{/if}
			{/foreach}
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
	{$i = 0}
	{foreach $table->data as $data}
		<tr class="{if $i % 2 === 0}odd{else}even{/if}">
			{foreach $table->cols as $col}
			
			{if is_array($col)}
				{assign var=type value=$col[1]}

				{if $type == 'picture'}
				<td><img height="40" src="{$data->$col[0]}"></td>			
				{/if}

			{else}
				<td>{$data->$col}</td>			
			{/if}

			{/foreach}
			<td class="center">
				<a href="{$table->edit_url}/{$data->id}"><i class="fa fa-pencil fa-fw"></i></a>
				<a href="{$table->delete_url}/{$data->id}" onclick="if(confirm('{t}Are you sure you want to delete this{/t} {$table->entity} ({$data->id}) ?')) { return true } return false"><i class="fa fa-trash fa-fw"></i></a>
			</td>
		</tr>
		{assign var=i value=$i + 1}
	{/foreach}
	</tbody>
</table>