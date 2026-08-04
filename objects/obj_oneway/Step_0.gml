if(bbox_bottom > obj_player.bbox_bottom)
{
	sprite_index = spr_wall;
}
else
{
	sprite_index = -1;
}

with(obj_player)
{
	desce = keyboard_check(ord("S"))
	
	if (desce)
	{
		other.sprite_index = -1;
	}
}