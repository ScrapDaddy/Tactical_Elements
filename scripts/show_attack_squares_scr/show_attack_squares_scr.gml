/*
model id = argument0;
return square_list
*/
var model_id=argument0;
var min_range=model_id.current_min_range;
var max_range=model_id.current_max_range;
var start_square_id=model_id.current_square;
var attack_square_list=ds_list_create();

attack_square_list = add_attack_squares_scr(model_id.current_square, max_range , attack_square_list);

for(i=0;i<ds_list_size(attack_square_list);i++)
{
	var square_id = ds_list_find_value(attack_square_list,i);
	square_id.highlight.sprite_index=square_pink_highlight_sp;
}

return attack_square_list