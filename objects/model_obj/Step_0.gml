x=current_square.x;
y=current_square.y;
if(highlight!=noone)
{
	highlight.x=x;	
	highlight.y=y;
}

if(selected==1 and acting==0)
{
	if(move_available==1 and action==1)
	{
		if(created_square_highlight==0)
		{
			move_square_list=show_move_squares_scr(id);
			created_square_highlight=1;
		}
		if(create_move_arrow_scr(id,move_square_list)==1) {remaining_moves--;}
	}
	else if(basic_attack_available==1 and action==2)
	{
		if(created_square_highlight==0)
		{
			attack_square_list=show_attack_squares_scr(id);
			created_square_highlight=1;
		}
	}
	
	if(clicked_me_scr(selected_square,mb_right)==1)
	{
		if(action==1 and move_available==1)
		{
			acting=1;
			move_available=0;
		}
	}
	
	if(clicked_not_me_scr(current_square.id,mb_left)==1) //left clicked not model or right click anywhere
	{
		selected=0;
		if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
		else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
		clear_square_highlights_scr();
		clear_arrows_scr();
		created_square_highlight=0;
		ds_list_clear(move_square_list);
		ds_list_clear(hovered_squares);
		remaining_moves=current_move;
		ds_list_clear(selected_squares);
	}
	if(clicked_me_scr(current_square.id,mb_left)==1)
	{
		
	}
	if(clicked_anywhere_scr(mb_right)==1)
	{
		selected=0;
		if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
		else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
		clear_square_highlights_scr();
		clear_arrows_scr();
		created_square_highlight=0;
		ds_list_clear(move_square_list);
		ds_list_clear(hovered_squares);
	}
}
else if(acting==0) //if selected==0
{
	
	if(clicked_me_scr(current_square.id,mb_left)==1) //left clicked model
	{
		selected=1;
		highlight.sprite_index=yellow_highlight_sp;
	}
}

if(acting==1)
{
	if(action==1)
	{
		move_model_scr(id);		
	}
	step++;
}