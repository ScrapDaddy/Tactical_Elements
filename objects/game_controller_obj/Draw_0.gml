if(global.player_turn==1)
{
	draw_set_color(c_black);
	draw_set_font(standard_fnt);
	draw_text(2450,400,"Player1's turn");
}
if(global.player_turn==2)
{
	draw_set_color(c_black);
	draw_set_font(standard_fnt);
	draw_text(2450,400,"Player2's turn");
}