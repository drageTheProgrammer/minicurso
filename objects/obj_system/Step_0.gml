randomize();
		
switch(state){
	case("espera"):
		if(!alpha_max){
			alpha+=0.015;
			if(alpha>=1){
				alpha_max = true;
				alarm[1] = 60;
			}
		}
				
		if(alpha_max&&alpha_minus){
			alpha-=0.015;
			if(alpha<=0){
				state = "luta";
				alpha = 0;
				alpha_max = false;
				alpha_minus = false;
			}
		}
		break;
	case("compra"):
		if(!botoes){
			var bt1 = instance_create_layer((room_width/2)-64,128,"Botoes",obj_botao);
			var bt2 = instance_create_layer((room_width/2),128,"Botoes",obj_botao);
			var bt3 = instance_create_layer((room_width/2)+64,128,"Botoes",obj_botao);
			bt1.tipo = "dano";
			bt2.tipo = "vida";
			bt3.tipo = "mana";
			botoes = true;
		}
		break;
	case("luta"):
		if(!spawning){
			spawn(inimigos);
			spawning = true;
		}
		
		if(kills==inimigos){
			kills = 0;
			inimigos += 1;
			inimigos_aux = inimigos;
			horda++;
			spawning = false;
			//if(horda%6==0){
				state = "compra";
				//lvl++;
			//}else{
			//	state = "espera";
			//}
		}
		break;
}
