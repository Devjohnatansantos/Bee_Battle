if (!instance_exists(alvo)) exit;


var dist = point_distance(x, y, alvo.x, alvo.y);



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
	 
	 y--;
	 
	 if (y <=50)
	 {
		 estado = "perseguindo";
	 }
}