/*
owner player = argument0;
return 0;
*/

player=argument0;

var stats="";
if(player==1)
{
	stats=read_hero_card_from_deck_scr("player1_deck.txt");
}
else if(player==2)
{
	stats=read_hero_card_from_deck_scr("player2_deck.txt");
}
else
{
		show_debug_message("Hero unable to be created, invalid player");
		return 0;
}

var stats_list=read_card_database_stats_scr(stats);

var model=instance_create_layer(0,0,"model_layer",model_obj);
if(player==1) 
{
	for(n=0;n<instance_number(square_obj);n++)
	{
		var square=instance_find(square_obj,n);
		if(square.square_number==29) {model.current_square=square.id;}
	}
	model.owner=1;
}
else if(player==2) 
{
	for(n=0;n<instance_number(square_obj);n++)
	{
		var square=instance_find(square_obj,n);
		if(square.square_number==141) {model.current_square=square.id;}
	}
	model.owner=2;
}
model.name=ds_list_find_value(stats_list,0);
model.base_health=int64(ds_list_find_value(stats_list,1));
model.base_attack=int64(ds_list_find_value(stats_list,2));
model.base_move=int64(ds_list_find_value(stats_list,3));
model.base_min_range=int64(ds_list_find_value(stats_list,4));
model.base_max_range=int64(ds_list_find_value(stats_list,5));
for(var i=6;i<11;i++)
{
	if(int64(ds_list_find_value(stats_list,i))!=0)
	{
		ds_list_add(model.base_abilities,int64(ds_list_find_value(stats_list,i)));
	}
}
model.mana_value=int64(ds_list_find_value(stats_list,12));
model.sprite_index = asset_get_index(model.name+"_sp");
return 0;