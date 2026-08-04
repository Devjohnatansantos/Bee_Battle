
randomize()
var _x = irandom_range(0, 370);
var _y = irandom_range(0, -50);

if (instance_number(Bee_pai) < 3 && timer <= 0)
{
instance_create_layer(_x, _y, "Inimigos", Bee_pai)
timer = room_speed * 5;
}

alarm[0] = 60;