//Controles
Kleft	= keyboard_check(vk_left)
Kright	= keyboard_check(vk_right)
Kjump	= keyboard_check_pressed(vk_up)

//movimiento horizontal
if (Kleft or Kright){
	HLastKey = Kright - Kleft
	if (HSpeed < HSpeedMax){
		HSpeed += HAccel
	}
}else{
	if (HSpeed > 0){
		HSpeed -= HAccel
	}
}
clamp(HSpeed,0,HSpeedMax)

repeat(HSpeed){
	if place_free(x+HLastKey,y){
		x += HLastKey
	}else{
		HSpeed = 0
	}
}