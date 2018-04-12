x=current_square.x;
y=current_square.y;
if(highlight!=noone)
{
	highlight.x=x;	
	highlight.y=y;
}

if(selected==1)
{
	if(move_available==1)
	{
		if(created_square_highlight==0)
		{
			move_square_list=show_move_squares_scr(id,current_move);
			created_square_highlight=1;
		}
		if(create_move_arrow_scr(id,move_square_list)==1) {remaining_moves--;}
	}
	
	if(clicked_anywhere_scr(mb_right)==1)
	{
		for(i=0;i<ds_list_size(selected_square);i++)
		{
			move_model_scr(id);
		}
	}
	
	if(clicked_not_me_scr(current_square.id,mb_left)==1 or clicked_anywhere_scr(mb_right)==1) //left clicked not model or right click anywhere
	{
		selected=0;
		if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
		else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
		clear_square_highlights_scr();
		clear_arrows_scr();
		created_square_highlight=0;
		ds_list_clear(move_square_list);
		remaining_moves=current_move;
	}

}
else //if selected==0
{
	
	if(clicked_me_scr(current_square.id,mb_left)==1) //left clicked model
	{
		selected=1;
		highlight.sprite_index=yellow_highlight_sp;
	}
}
