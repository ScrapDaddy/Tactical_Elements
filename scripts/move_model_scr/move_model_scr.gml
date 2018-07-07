/*
model_id = argument0;
return 1
*/

var model_id = argument0;

with(model_id)
{
	if(step mod 35==0)
	{
		current_square=ds_list_find_value(selected_squares,0);
		ds_list_delete(selected_squares,0);
		x=current_square.x;	
		y=current_square.y;
	}

	if(ds_list_size(selected_squares)==0)
	{
		acting=0;
		step=-1;
	}		
}