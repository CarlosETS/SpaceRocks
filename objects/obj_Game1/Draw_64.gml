switch(room){
	
	case rm_Game1:
		draw_text(20, 20,"PONTUAÇÂO: " + string(score));
		draw_text(20, 40,"VIDAS: " + string(lives));
	break;
	
	case rm_StartGame1:
		draw_set_halign(fa_center);
		var c= c_aqua;
		draw_text_transformed_color(room_width/2, 100,"ROCHAS ESPACIAIS",3,3,0,c,c,c,c,1);
		draw_text(room_width/2, 200,
			@"Pontuaç ão 1,000 para ganhar!!

W: Mover
A: Virar para a esquerda
D: Virar para a direita
Espaço: Atirar

>> PRECIONE ENTER PARA COMEÇAR OU ESC PARA VOLTAR <<"
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_WinGame1:
		draw_set_halign(fa_center);
		var c= c_green;
		draw_text_transformed_color(room_width/2, 100,"YOU WON!!",3,3,0,c,c,c,c,1);
		draw_text(room_width/2, 400,
			@" PRECIONE ENTER PARA REINICIAR 
			PRECIONE ESC PARA VOLTAR AO MENU"
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_LoseGame1:
	draw_set_halign(fa_center);
		var c= c_red;
		draw_text_transformed_color(room_width/2, 150,"YOU LOSE!!",3,3,0,c,c,c,c,1);
		draw_text(room_width/2, 250,
			"PONTUAÇÃO FINAL:" + string(score) 
		);
		draw_text(room_width/2, 300,
			@"PRECIONE ENTER PARA REINICIAR 
			PRECIONE ESC PARA VOLTAR AO MENU"
		);
		draw_set_halign(fa_left);
		break;

}