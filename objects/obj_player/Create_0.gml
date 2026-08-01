setup_de_controle();

// Váriaveis de movimentação
move_dir = 0;
movespd = 3.123;
xspd = 0;
yspd = 0;

// Váriaveis de pulo
grav = .275;
// O quão rápido o player pode cair
termvel = 4;
// Velocidade do pulo

pulo_max = 1;
contador_pulos = 0;
timer_segura_pulo = 0;
frames_segura_pulo[0] = 15;
jspd[0] = -3;
frames_segura_pulo[1] = 10;
jspd[1] = -2.50;
on_ground = true;