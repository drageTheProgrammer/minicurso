switch(tipo){
	case("dano"):
		image_index = 2;
		if(place_meeting(x,y,obj_mira)&&mouse_check_button_pressed(mb_left)){
			obj_player.damage += (obj_player.damage*30)/100;
		}
		break;
	case("vida"):
		image_index = 0;
		if(place_meeting(x,y,obj_mira)&&mouse_check_button_pressed(mb_left)){
			obj_player.life += (obj_player.life*30)/100;
		}
		break;
	case("mana"):
		image_index = 1;
		if(place_meeting(x,y,obj_mira)&&mouse_check_button_pressed(mb_left)){
			obj_player.mana += (obj_player.mana*30)/100;
		}
		break;
}

if(place_meeting(x,y,obj_mira)&&mouse_check_button_pressed(mb_left)){
	obj_system.state = "espera";
	instance_destroy(obj_botao);
	obj_system.botoes = false;
}
