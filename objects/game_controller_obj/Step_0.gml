if(board_created==0)
{
		create_game_board_scr(total_board_rows,total_board_cols);
		board_created=1;
		create_hero_model_scr(1);
		create_hero_model_scr(2);
}

if(global.player_turn!=turn)
{
	turn=global.player_turn;
	for(i=0;i<instance_number(model_obj);i++)
	{
		var model=instance_find(model_obj,i);
		if (model.owner==turn)
		{
			model.move_available=1;
			model.action_available=1;
		}
		else if(model.owner!=turn)
		{
			model.move_available=0;
			model.action_available=0;
		}
	}
}