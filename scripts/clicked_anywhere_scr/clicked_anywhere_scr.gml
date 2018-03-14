/*
mouse_press = argument0;
if (clicked) {return 1;}
else {return 0;}
*/

var mouse_press=argument0;
if(mouse_check_button_pressed(mouse_press))
{
	return 1;
}
	return 0;