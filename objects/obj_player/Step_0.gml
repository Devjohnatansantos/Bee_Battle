dire = keyboard_check(ord("D"))
esq = keyboard_check(ord("A"))
pulo = keyboard_check_pressed(vk_space);

velh = (dire - esq) * vel;
velv = velv + gravidade;


if(place_meeting(x + sign(velh), y, obj_wall))
{
	while(!place_meeting(x + sign(velh), y, obj_wall))
	{
		x = x + sign(velh);
	}
	velh = 0;

}

x =  x + velh

if(place_meeting(x, y + velv, obj_wall))
{
	while(!place_meeting(x, y + sign(velv), obj_wall))
	{
		y = y + sign(velv);
	}
	velv = 0;
	
}

y = y + velv


estou_chao = place_meeting(x, y + 1, obj_wall)

if(pulo)
{
	if(estou_chao)
	{
	velv -=8;	
	}
}








