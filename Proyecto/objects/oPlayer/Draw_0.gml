draw_self();

//manejo de sprites

if HLastKey != 0{
	image_xscale = HLastKey
}


if place_free(x,y+1){
	sprite_index = sjump
}else{
	if (Kleft or Kright){
		sprite_index = sWalk
	}else{
		sprite_index = sIdle
	}
}