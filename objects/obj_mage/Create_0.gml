state = "walk";
lvl = 0;
spd = .7;
attack = false;
dir = noone;
initial_x = x;
initial_y = y;
desloc = 28;
life = 10;
dano = false;

new_dir = function(){

	var rand_x = choose(-desloc,desloc);
	var rand_y = choose(-desloc,desloc);
	var dir = array_create(2,0);
	
	while!(rand_x+x>16&&rand_x+x<room_width-16&&rand_y+y>16&&rand_y+y<room_height-16){
		rand_x = choose(-desloc,desloc);
		rand_y = choose(-desloc,desloc);
	}
	var alvo = instance_create_layer(x+rand_x,y+rand_y,"Instances",obj_aux_mage);
	
	return alvo;
}

dir = new_dir();