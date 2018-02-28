/*
button id = argument0;
mouse button = argument1;
if (clicked) {return 1;}
else {return 0;}
*/
var button_id=argument0;
var mouse_press=argument1;
if(mouse_x>=button_id.bbox_left and mouse_x<=button_id.bbox_right and mouse_y>=button_id.bbox_top and mouse_y<=button_id.bbox_bottom and mouse_check_button_pressed(mouse_press))
{
	return 1;
}
	return 0;