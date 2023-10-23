var right, left, up, down;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));

if(obj_system.state!="compra"){

if(x<obj_mira.x){
	image_xscale = 1;
}else{
	image_xscale = -1;
}

if(mouse_check_button_pressed(mb_left)&&attack==false){
	instance_create_layer(x,y,"Effects",obj_attack);
	alarm[0] = 30;
	attack = true;
}
		

switch(state){
	case("idle"):
		//comportamento
		sprite_index = spr_player_idle;
		spdH = 0;
		spdV = 0;
		
		//transicoes
		if(right||left||down||up){
			state = "walk";
		}		
		break;
	case("walk"):
		//comportamento
		sprite_index = spr_player_walk;
		
		if(right||left||down||up){
			move_dir = point_direction(0,0,(right - left),(down - up));
			spdH = lengthdir_x(spd,move_dir);
			spdV = lengthdir_y(spd,move_dir);
		}
		
		if(!place_meeting(x+spdH,y,obj_wall)){
			x += spdH;
		}
		if(!place_meeting(x,y+spdV,obj_wall)){
			y += spdV;
		}
		
		//transicoes
		if!(right||left||down||up){
			state = "idle";
		}
		
		break;
	
	case("special"):
	
		break;
}

}