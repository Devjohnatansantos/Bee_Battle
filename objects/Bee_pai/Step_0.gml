save--;
if (!instance_exists(alvo)) exit;


var dist = point_distance(x, y, alvo.x, alvo.y);

if (place_meeting(x, y, Bee_pai))
{
    var inst = instance_place(x, y, Bee_pai);

    if (inst != noone)
    {
        var dir = point_direction(inst.x, inst.y, x, y);

        x += lengthdir_x(2, dir);
        y += lengthdir_y(2, dir);
    }
}

if (place_meeting(x, y, Bee_filha))
{
    var inst = instance_place(x, y, Bee_filha);

    if (inst != noone)
    {
        var dir = point_direction(inst.x, inst.y, x, y);

        x += lengthdir_x(4, dir);
        y += lengthdir_y(4, dir);
    }
}
switch(estado)
{
    
    case "perseguindo":

        
        var dir = point_direction(x, y, alvo.x, alvo.y);

        x += lengthdir_x(velocidade_voo, dir);
        y += lengthdir_y(velocidade_voo, dir);


        
        if (dist < distancia_ataque)
        {
            direcao_investida = dir;
            estado = "investindo";
        }

    break;


   
    case "investindo":

        x += lengthdir_x(velocidade_investida, direcao_investida);
        y += lengthdir_y(velocidade_investida, direcao_investida);


        tempo_espera++;

        
        if (tempo_espera > 60)
        {
            tempo_espera = 0;
            estado = "afastando";
        }

    break;
	
	 case "afastando":
	 
	 y-=0.5;
	 
	 if (y <=50)
	 {
		 estado = "perseguindo";
	 }
}



