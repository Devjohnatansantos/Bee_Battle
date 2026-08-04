
randomize()
var _x = irandom_range(0, 370);
var _y = irandom_range(0, -50);

if (timer_jogo <= 3000)
{
if (instance_number(Bee_pai) < 3 && timer <= 0)
{
instance_create_layer(_x, _y, "Inimigos", Bee_pai)
timer = room_speed * 5;
}
}
else
{
	if (timer_jogo <= 6000)
	{
	if (instance_number(Bee_pai) < 4 && timer <= 0)
{
	instance_create_layer(_x, _y, "Inimigos", Bee_pai)
	timer = room_speed * 4;
}
else
{
	if (timer_jogo <= 9000)
	{
	if (instance_number(Bee_pai) < 6 && timer <= 0)
{
	instance_create_layer(_x, _y, "Inimigos", Bee_pai)
	timer = room_speed * 3;
}
	}
}
}
}


alarm[0] = 60;