/*
model id = argument0;
start_move = argument1;
return 1
*/
var model_id=argument0;
var start_move = argument1;
var start_square_id=model_id.current_square;
var square_list = ds_list_create();
var current_square_id=start_square_id;
var remaining_move=start_move;

square_list = add_move_squares_scr(current_square_id,remaining_move,square_list);

for(i=0;i<ds_list_size(square_list);i++)
{
	var square_id = ds_list_find_value(square_list,i);
	square_id.highlight.sprite_index=square_yellow_highlight_sp;
}

return square_list;