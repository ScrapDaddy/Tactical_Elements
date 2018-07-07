/*
model= argument0;
List of squares model can move on = argument1;
return 1
*/
var model_id=argument0;
var square_list = argument1;

var selected_square=noone;
var highlighted_square_list = model_id.move_square_list;
var remaining_moves=model_id.remaining_moves;

if(remaining_moves==model_id.current_move)
{
	selected_square=model_id.current_square;
}
else
{
	selected_square=model_id.selected_square;
}
if(remaining_moves>0)
{
	var square=hovered_over_me_scr(selected_square,highlighted_square_list);
	if(square!=0)
	{
		ds_list_add(model_id.hovered_squares,square);
		model_id.selected_square=square;
		var arrow=instance_create_layer(square.x,square.y,"arrow_layer",arrow_obj);
		if(square==selected_square.up) {arrow.image_angle=90;}
		if(square==selected_square.right) {arrow.image_angle=0;}
		if(square==selected_square.down) {arrow.image_angle=270;}
		if(square==selected_square.left) {arrow.image_angle=180;}
		
		if(remaining_moves>1) {arrow.sprite_index=arrow_line_sp;}
		else {arrow.sprite_index=arrow_end_sp;}
		return 1;
	}
}

return 0;