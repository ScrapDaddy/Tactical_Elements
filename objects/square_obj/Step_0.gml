for(i=0;i<instance_number(model_obj);i++)
{
	var model=instance_find(model_obj,i);
	if(model.current_square==id) 
	{
		occupied=1; 
		exit;
	}
	else
	{
		occupied=0;
	}
}