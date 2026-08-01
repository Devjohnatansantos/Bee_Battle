
if(tutorial_1 == true)
{
// setando pulo max
// se tenho peido carregado posso dar double jump
if (global.peidos >= 1)
{
	pulo_max = 2;
}
else
{
	// senão apenas um pulo
	pulo_max = 1;	
}
}
// obtendo os inputs
obter_inputs();

// movimentação horizontal
move_dir = direita - esquerda;

xspd = move_dir * movespd;

// colisão horizontal
// essa variável é o quão perto o player pode chegar da parade
var _subpixel = .5;

if(place_meeting(x + xspd, y, obj_wall))
{
	// se aproximando precisamente até a parede
	var _pixel_check = _subpixel * sign(xspd);
	while !place_meeting(x + _pixel_check, y, obj_wall)
	{
		x += _pixel_check;
		
	}
	
	xspd = 0;	
	
}

x += xspd;


// movimentação vertical
// gravidade
yspd += grav;

if (on_ground)
{
	contador_pulos = 0;
	timer_segura_pulo = 0;
}
else
{
	if(contador_pulos == 0)
	{
		contador_pulos = 1;
	}
}

if (yspd > termvel)
{
	yspd = termvel;
}

// pulo

if (pulo_buffered && contador_pulos < pulo_max)
{
	pulo_buffered = false;
	pulo_buffer_timer = 0;
	
	
	contador_pulos++;
	
	
	timer_segura_pulo = frames_segura_pulo[contador_pulos-1];
	
	if(contador_pulos >= 2)
	{
		global.peidos -= 1;
	}
	
}

if (!pulo)
{
	timer_segura_pulo = 0;
}

if (timer_segura_pulo > 0)
{
	yspd = jspd[contador_pulos-1];
	
	timer_segura_pulo--;
	
}


//colisão

var _subpixel = .5;
if (place_meeting(x, y + yspd, obj_wall))
{
	var _pixel_check = _subpixel * sign(yspd);
	while !place_meeting(x, y + _pixel_check, obj_wall)
	{
		if (yspd < 0)
		{
			timer_segura_pulo = 0;	
		}
		
		y += _pixel_check;
		
		
	}
	
	yspd = 0;
}

if (yspd >= 0 && place_meeting(x, y+1, obj_wall))
{
	on_ground = true;
}
else
{
	on_ground = false;
}

y += yspd;

if (alarm[0] > 0)
{
	if (image_alpha >= 1)
	{
		alpha_hit = -0.05
	}
	else if (image_alpha <= 0)
	{
		alpha_hit = 0.05;
	}
	image_alpha += alpha_hit;
}







