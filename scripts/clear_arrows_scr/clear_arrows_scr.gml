var all_gone=0;
while(all_gone==0)
{
	var arrow=instance_find(arrow_obj,0);
	if(arrow!=noone)
	{
		instance_destroy(arrow);	
	}
	else
	{
		all_gone=1;	
	}
}
return 1;