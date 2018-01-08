/*
card stats = argument0;
owner player = argument1;
return 0;
*/

stats=argument0;
player=argument1;

var model=instance_create_layer(0,0,"model_layer",model_obj);
stats_list=read_card_database_stats_scr(stats);
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