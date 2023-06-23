if (!global.gamePaused){
	//bounce
	if (bounceCount != 0){
		//casues speed to start fast and gradually slow down
		bounce += (pi*bounceSpeed);
		if (bounce > pi){
			bounce -= pi;
			bounceHeight *= 0.6
			bounceCount --
		}
		z = sin(bounce) * bounceHeight;
	}
	else{
		z = 0
	}
	//deteriorate fragments
	deteriorate++;
	if (deteriorate > deteriorateAfter){
		image_alpha -= 1/deteriorateTime
		if(image_alpha <= 0){
			instance_destroy()
		}
	}
	//Friction
	fric = 0.05;
	if (z == 0){
		fric = 0.10
	}
	x += lengthdir_x(spd, direction)
	y += lengthdir_y(spd, direction)
	if (tilemap_get_at_pixel(collisionMap, x, y) > 0){
		spd = 0
	}
	spd = max(spd-fric, 0)
}
