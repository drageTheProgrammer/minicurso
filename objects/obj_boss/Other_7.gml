if(state=="attack11"){
	atk1 = true;
	alarm[1] = 90;
}

if(state=="attack2"){
	var xx = choose(-32,32);
	var atk = instance_create_layer(x + xx,y - 32,"Effects",obj_attack_boss);
	alarm[0] = 60;
	attack = true;
}

if(state=="dead"){
	instance_destroy();
}