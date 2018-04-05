for(i=0;i<instance_number(arrow_obj);i++)
{
	var square=instance_find(arrow_obj,i);
	square.highlight.sprite_index=-1;
}
return 1;