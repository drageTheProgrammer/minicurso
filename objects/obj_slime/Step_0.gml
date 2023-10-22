if(state!="attack"){
	if(x>obj_player.x){
		image_xscale = 1;
	}else{
		image_xscale = -1;
	}
}

switch(state){
	case("walk"):
		//comportamento
		move_towards_point(obj_player.x,obj_player.y,spd);
		sprite_index = spr_slime;
		image_speed = 1;
		
		//transicao
		if(distance_to_object(obj_player)<=2){
			state = "attack";
			image_index = 0;
			var atk = instance_create_layer(x,y,"Instances",obj_slime_attack);
			atk.image_xscale = image_xscale;
		}
		
		if(life<=0){
			state = "dead";
		}
		break;
	case("attack"):
		speed = 0;
		if(!attack){
			sprite_index = spr_slime_attack;
		}else{
			sprite_index = spr_slime;
			image_index = 0;
		}

		//transicao
		if(life<=0){
			state = "dead";
		}
		
		break;
	case("dead"):
		speed = 0;
		sprite_index = spr_slime_dead;
		break;
}