x=current_square.x;
y=current_square.y;
if(highlight!=noone)
{
	highlight.x=x;	
	highlight.y=y;
}

if(selected==1)
{
	if(clicked_not_me_scr(current_square.id,mb_left)==1 or clicked_anywhere_scr(mb_right)==1) //left clicked not model or right click anywhere
	{
		selected=0;
		if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
		else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
		clear_square_highlights_scr();
	}

	if(move_available==1)
	{
		var list=standard_move_scr(id,current_move);
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
