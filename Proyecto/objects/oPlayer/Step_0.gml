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
		if place_free(x,y+Gravity){
			HSpeed -= HAirAceel
		}else{
			HSpeed -= HAccel
		}
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

//Movimiento Vertical
if (Kjump) and (CanJump > 0){
	CanJump --;
	Gravity = -1
	VSpeed = VSpeedMax
}

if (VSpeed > 0) and (Gravity = -1) {
	VSpeed -= VAccel
}else{
	Gravity = 1
}

if (VSpeed < VSpeedMax) and (Gravity = 1){
	VSpeed += VAccel
}
clamp(VSpeed,0,VSpeedMax)

//Gravedad
repeat(VSpeed){
	if place_free(x,y+Gravity){
		y += Gravity
	}else{
		VSpeed = 0
		if (Gravity = 1){
			CanJump = MaxJump
		}
	}
}