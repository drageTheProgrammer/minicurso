randomize();

state = "a";
title = false;
alpha = 0;
alpha_max = false;
alpha_minus = false;

horda = 1;
lvl = 1;
botoes = false;
jogando = false;
inimigos = 4;
inimigos_aux = inimigos;
kills = 0;
spawning = false;

function pos(_x,_y) constructor {
	xx = _x;
	yy = _y;
}

array_spawn = array_create(8);

array_spawn[0] = new pos(128,16);
array_spawn[1] = new pos(128,240);
array_spawn[2] = new pos(16,128);
array_spawn[3] = new pos(240,128);
array_spawn[4] = new pos(56,40);
array_spawn[5] = new pos(200,40);
array_spawn[6] = new pos(56,216);
array_spawn[7] = new pos(200,216);

title_call = function(_horda){
	
}

spawn = function(_inimigos){
	array_shuffle_ext(array_spawn);
	var aux = 0;
	for(var i=0;i<_inimigos;i++){	
		var inimigo = choose(obj_slime,obj_mage);		
		instance_create_layer(array_spawn[i].xx,array_spawn[i].yy,"Instances",inimigo);
		if(i==array_length(array_spawn)-1){
			inimigos_aux -= 8;
			alarm[0] = 240;
			break;
		}
	}
}