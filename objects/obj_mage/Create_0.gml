randomize();

state = "walk";
spd = .7;
attack = false;
dir = noone;
initial_x = x;
initial_y = y;
desloc = 28;
life = 10;

new_dir = function(){

	var rand_x = choose(-desloc,desloc);
	var rand_y = choose(-desloc,desloc);
	var dir = array_create(2,0);
	
	while(place_meeting(rand_x,rand_y,obj_wall)){
		rand_x = choose(-desloc,desloc);
		rand_y = choose(-desloc,desloc);
	}
	var alvo = instance_create_layer(x+rand_x,y+rand_y,"Instances",obj_aux_mage);
	
	return alvo;
}

dir = new_dir();