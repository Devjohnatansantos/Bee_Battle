
repeat(3)
{
randomize()
var _x = irandom_range(0, 370);
var _y = irandom_range(0, -20);

instance_create_layer(_x, _y, "Inimigos", Bee_filha)
}


