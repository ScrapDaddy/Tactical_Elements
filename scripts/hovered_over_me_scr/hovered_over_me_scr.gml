/*
current square = argument0;
list of all highlighted squares = argument1;
*/
var current_square=argument0;
var square_list=argument1;

for(i=0;i<ds_list_size(square_list);i++)
{
	var square=ds_list_find_value(square_list,i);
	if(square==current_square.up or square==current_square.right or square==current_square.down or square==current_square.left) //see if square being checked is adjacent to current square
	{
		if(mouse_x>=square.bbox_left and mouse_x<=square.bbox_right and mouse_y>=square.bbox_top and mouse_y<=square.bbox_bottom)
		{
			return square; //return the square hovered over
		}
	}
}
	return 0;