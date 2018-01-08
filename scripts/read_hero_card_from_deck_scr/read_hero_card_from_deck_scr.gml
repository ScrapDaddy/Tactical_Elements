/*
deck_file = argument0;
return stats;
*/

deck_file=argument0;

var deck=file_text_open_read(deck_file);
var card_id=file_text_read_string(deck);
var card_database=file_text_open_read("card_database.txt");
for(var s="";s!=string(card_id);file_text_readln(card_database)) //read each line of the card database until s equals the card_id read in from the player's deck
{
	s=file_text_read_string(card_database);
}
var stats=file_text_read_string(card_database); //stats of card
show_debug_message(stats);
return stats;
