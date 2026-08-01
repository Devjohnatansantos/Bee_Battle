if (alarm[0] <= 0)
{
	vida -= 1;
	alarm[0] = 180;
	if (vida <= 0)
{
	room_restart();
}
}