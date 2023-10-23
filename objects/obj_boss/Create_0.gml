state = "walk";
special = choose(4,5);
lvl = 0;
spd = .8;
attack = false;
dir = noone;
initial_x = x;
initial_y = y;
desloc = 64;
life = 10;
dano = false;
atk1 = false;

new_dir = function(){

	var rand_x = choose(-desloc,desloc);
	var rand_y = choose(-desloc,desloc);
	var dir = array_create(2,0);
	
	while!(rand_x+x>32&&rand_x+x<room_width-32&&rand_y+y>32&&rand_y+y<room_height-32){
		rand_x = choose(-desloc,desloc);
		rand_y = choose(-desloc,desloc);
	}
	var alvo = instance_create_layer(x+rand_x,y+rand_y,"Instances",obj_aux_mage);
	
	return alvo;
}

dir = new_dir();