if(x>obj_player.x){
	image_xscale = 1;
}else{
	image_xscale = -1;
}

switch(state){
	case("walk"):
		//comportamento
		sprite_index = spr_mage;
		image_speed = 1;
		if(instance_exists(dir)){		
			move_towards_point(dir.x,dir.y,spd);
		}
		
		//transicao
		if(place_meeting(x,y,dir)){
			instance_destroy(dir);
			state = "attack";
		}
		if(life<=0){
			state = "dead";
			image_index = 0;
		}
		
		break;
	case("attack"):
		speed = 0;
		if(!attack){
			sprite_index = spr_mage_attack;
		}else{
			dir = new_dir();
			image_speed = 0;
			image_index = 0;
		}

		//transicao
		if(life<=0){
			state = "dead";
			image_index = 0;
		}
		
		break;
	case("dead"):
		speed = 0;
		sprite_index = spr_mage_dead;
		break;
}

  