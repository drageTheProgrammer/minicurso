if(place_meeting(x,y,obj_mira)){
	xscale = 1.2;
	yscale = 1.2;
	col = $E5E5E5;
}else{
	xscale = 1;
	yscale = 1;
	col = c_white;
}

draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,0,col,1);