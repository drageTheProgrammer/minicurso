if(state!="attack11"){
	if(x<obj_player.x){
		image_xscale = 1;
	}else{
		image_xscale = -1;
	}
}

switch(state){
	case("walk"):
		//comportamento
		spd = .8;
		sprite_index = spr_boss;
		image_speed = 1;
		if(instance_exists(dir)){		
			move_towards_point(dir.x,dir.y,spd);
		}
		
		//transicao
		if(place_meeting(x,y,dir)){
			instance_destroy(dir);
			if(special==0){
				state = "special";
				special = choose(4,5);
			}else{
				special--;
				state = choose("attack1","attack2");
			}
		}
		break;
	case("attack1"):
		spd = 1.1;
		move_towards_point(obj_player.x,obj_player.y,spd);
		image_speed = 1;
		
		//transicao
		if(distance_to_object(obj_player)<=2){
			state = "attack11";
			image_index = 0;
			var atk = instance_create_layer(x,y,"Effects",obj_boss_attack);
			atk.image_xscale = image_xscale;
		}
		break;
	case("attack11"):
		speed = 0;
		if(!atk1){
			sprite_index = spr_boss_atk1;
		}else{
			sprite_index = spr_boss;
		}
		
		//transicao
		break;
	case("attack2"):
		speed = 0;
		if(!attack){
			sprite_index = spr_boss_atk2;
		}else{
			dir = new_dir();
			image_speed = 0;
			image_index = 0;
		}
		break;
	case("special"):
		speed = 0;
		break;
	case("dead"):
	
		break;
}