/*
card stats = argument0;
return stat_list;
*/

var stats=argument0;
var character="";
var stat_list=ds_list_create();
var current_string="";
var j=0;
for(var i=0;i<13;i++)
{
	current_string="";
	character="";
	while(character!=":")
	{
			j++;
			character=string_char_at(stats,j);
			if(character!=":")
			{
				current_string+=character;
			}
	}
	ds_list_add(stat_list, current_string);
}
return stat_list;