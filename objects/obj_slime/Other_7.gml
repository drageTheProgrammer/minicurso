if(state=="attack"){
	attack = true;
	alarm[0] = 30;
}

if(state=="dead"){
	instance_destroy();
}