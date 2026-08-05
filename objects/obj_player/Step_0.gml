dire = keyboard_check(ord("D"))
esq = keyboard_check(ord("A"))
pulo = keyboard_check_pressed(vk_space);

velh = (dire - esq) * vel;
velv = velv + gravidade;
timer_atk--;


if(place_meeting(x + velh, y, obj_wall))
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
	velv -=5;	
	}
}



if (invencivel)
{
    tempo_invencivel--;

    
    image_alpha = (tempo_invencivel div 5) mod 2;

    if (tempo_invencivel <= 0)
    {
        invencivel = false;
        image_alpha = 1;
    }
}

if (dire || esq)
{
	sprite_index = spr_player_walking;
}
else
{
		sprite_index = spr_player;
}

if (dire)
{
	image_xscale = 1;
}
if (esq)
{
	image_xscale = -1;
}

if (mouse_check_button(mb_left) && timer_atk <= 0)
{
    var mel = instance_create_layer(x, y - 15, "Instances", obj_mel);

    mel.direction = point_direction(x, y - 15, mouse_x, mouse_y);
    mel.speed = 4;
    mel.image_angle = mel.direction;
	timer_atk = room_speed * 0.8;
}

if(vida <= 0)
{
	room_restart();
	
}

