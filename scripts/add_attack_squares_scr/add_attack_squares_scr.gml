/*
current square id = argument0;
remaining_range = argument1;
square_list = argument2;
return 1
*/
var current_square_id = argument0;
var remaining_range = argument1;
var square_list = argument2;

if(remaining_range>=0)
{
	if(ds_list_find_index(square_list,current_square_id)==-1) {ds_list_add(square_list,current_square_id);}
	if(instance_exists(current_square_id.up)) {square_list=add_attack_squares_scr(current_square_id.up,remaining_range-1,square_list);}
	if(instance_exists(current_square_id.right)) {square_list=add_attack_squares_scr(current_square_id.right,remaining_range-1,square_list);}
	if(instance_exists(current_square_id.down))  {square_list=add_attack_squares_scr(current_square_id.down,remaining_range-1,square_list);}
	if(instance_exists(current_square_id.left))  {square_list=add_attack_squares_scr(current_square_id.left,remaining_range-1,square_list);}
}

return square_list;