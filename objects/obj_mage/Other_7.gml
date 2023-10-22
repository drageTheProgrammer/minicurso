if(state=="attack"){
	var atk = instance_create_layer(x,y,"Instances",obj_attack_mage);
	alarm[0] = 30;
	attack = true;
}

if(state=="dead"){
	instance_destroy();
}