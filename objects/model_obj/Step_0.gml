x=current_square.x;
y=current_square.y;
if(highlight!=noone)
{
	highlight.x=x;	
	highlight.y=y;
}
if(clicked_me_scr(current_square.id,mb_left)==1)
{
	highlight.sprite_index=yellow_highlight_sp;
}
else if(clicked_not_me_scr(current_square.id,mb_left)==1)
{
	if(owner==1) {highlight.sprite_index=blue_highlight_sp;}
	else if(owner==2) {highlight.sprite_index=red_highlight_sp;}
}