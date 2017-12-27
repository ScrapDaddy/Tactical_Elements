/*
total_board_rows = argument0;
total_board_columns = argument1;
return 1;
*/
total_board_rows=argument0;
total_board_cols=argument1;
var current_row=1;
var current_col=1;
var current_square_number=1;
var length=sprite_get_width(square_sp);
var first_col_square=instance_create_layer(120,120,"square_layer",square_obj);
var current_square=first_col_square;

while(current_row<=total_board_rows)
{
	
	while(current_col<total_board_cols)
	{
		current_col++;
		current_square_number++;
		var temp=instance_create_layer(current_square.x+length,current_square.y,"square_layer",square_obj);
		temp.square_number=current_square_number;
		temp.row=current_row;
		temp.col=current_col;
		temp.left=current_square;
		current_square.right=temp;
		if(current_row>1)
		{
			var temp2=first_col_square.up;
			while(temp2.col!=current_col)
			{
				temp2=temp2.right;
			}
			temp.up=temp2;
			temp2.down=temp;
		}
		current_square=temp;
	}
	current_row++;
	current_col=1;
	current_square_number++;
	if(current_row!=total_board_rows+1)
	{
		var temp=instance_create_layer(first_col_square.x,first_col_square.y+length,"square_layer",square_obj);
		temp.square_number=current_square_number;
		temp.row=current_row;
		temp.col=current_col;
		temp.up=first_col_square;
		first_col_square.down=temp;
		first_col_square=temp;
		current_square=temp;
	}
}
return 1;
