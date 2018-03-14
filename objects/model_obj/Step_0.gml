x=current_square.x;
y=current_square.y;
if(highlight!=noone)
{
	highlight.x=x;	
	highlight.y=y;
}

if(clicked_me_scr(current_square.id,mb_left)==1 and selected==0) //left clicked model
{
	selected=1;
}
else if(clicked_not_me_scr(current_square.id,mb_left)==1 and selected==1) //left clicked not model
{
	selected=0;
}

if(clicked_anywhere_scr(mb_right)==1) //right clicked anywhere
{
	selected=0;
}

if(move_available==1 and selected==1)
{
	standard_move_scr(id,current_move);
}


if(selected==1)
{
	highlight.sprite_index=yellow_highlight_sp;
}
else
{
	if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
	else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
}