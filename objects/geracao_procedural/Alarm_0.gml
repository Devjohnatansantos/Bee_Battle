
randomize()
var _x = irandom_range(0, 370);
var _y = irandom_range(0, -20);

if (instance_number(Bee_pai) < 4)
{
instance_create_layer(_x, _y, "Inimigos", Bee_pai)
}

alarm[0] = 60;