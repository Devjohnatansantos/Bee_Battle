function setup_de_controle()
{
	buffer_timer = 3;
	
	pulo_buffered = 0;
	
	pulo_buffer_timer = 0;
	
}



function obter_inputs()
{
	//inputs de direção
	direita = keyboard_check(ord("D")) + keyboard_check(vk_right);
	direita = clamp(direita, 0, 1);
	
	
	
	
	esquerda = keyboard_check(ord("A")) + keyboard_check(vk_left);
	esquerda = clamp(esquerda, 0, 1);
	
	//inputs de ataque
	atk1 = mouse_check_button_pressed(mb_left);
	
	
	//inputs de ação
	pulo_fraco = keyboard_check_pressed(vk_space);
	pulo_fraco = clamp(pulo_fraco, 0, 1);
	
	pulo = keyboard_check(vk_space);
	pulo = clamp(pulo, 0, 1);
	
	if (pulo_fraco)
	{
		pulo_buffer_timer = buffer_timer;
		
	}
	if(pulo_buffer_timer> 0)
	{
		pulo_buffered = 1;
		pulo_buffer_timer--;
	}
	else
	{
		pulo_buffered = 0;	
	}
	
}