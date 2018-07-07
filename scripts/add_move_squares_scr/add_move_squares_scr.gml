/*
current square id = argument0;
remaining_move = argument1;
square_list = argument2;
return 1
*/
var current_square_id=argument0;
var remaining_move = argument1;
var square_list = argument2;

if(remaining_move>=0)
{
	if(ds_list_find_index(square_list,current_square_id)==-1) {ds_list_add(square_list,current_square_id);}
	if(instance_exists(current_square_id.up)) {if(current_square_id.up.occupied==0) {square_list=add_move_squares_scr(current_square_id.up,remaining_move-1,square_list);}}
	if(instance_exists(current_square_id.right)) {if(current_square_id.right.occupied==0) {square_list=add_move_squares_scr(current_square_id.right,remaining_move-1,square_list);}}
	if(instance_exists(current_square_id.down)) {if(current_square_id.down.occupied==0) {square_list=add_move_squares_scr(current_square_id.down,remaining_move-1,square_list);}}
	if(instance_exists(current_square_id.left)) {if(current_square_id.left.occupied==0) {square_list=add_move_squares_scr(current_square_id.left,remaining_move-1,square_list);}}
}

return square_list;