randomize();

state = "walk";
lvl = obj_system.lvl;
spd = choose(.4,.5,.6);
bonus = choose(0,0,0,0,0,0,1,1,1,2);
attack = false;
life = 10 + bonus;
damage = 2 + bonus;
dano = false;

if(lvl!=1){
	for(var i = 0;i<lvl;i++){
		life += ((20*life)/100);
		damage += ((10*damage)/100);
	}
}

