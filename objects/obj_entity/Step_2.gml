//entity loop
if (!global.gamePaused){
	depth = -bbox_bottom;
	if (lifted && instance_exists(obj_player)){
		if (obj_player.sprite_index != obj_player.spriteLift){
			x = obj_player.x;
			y = obj_player.y;
			z = 16;
			depth = obj_player.depth -1;
		}
	}
	if (!lifted){
		if (thrown){
			throwDistanceTravelled = min(throwDistanceTravelled + 5, entityThrowDistance);
			x = xstart + lengthdir_x(throwDistanceTravelled, direction)
			y = ystart + lengthdir_y(throwDistanceTravelled, direction)
			if (tilemap_get_at_pixel(collisionMap, x, y) > 0){
				thrown = false
				grav = 0.1
				if (entityThrowBreak){
					instance_destroy()
				}
			}
			throwPercent = throwStartPercent + lerp(0, 1-throwStartPercent, throwDistanceTravelled/entityThrowDistance);
			z = throwPeakHeight * sin(throwPercent * pi);
			if (entityThrowDistance == throwDistanceTravelled){
				thrown = false;
				if (entityThrowBreak){
					instance_destroy()
				}
			}
		}
		else{
			if (z > 0){
				z = max(z-grav, 0);
				grav += 0.1
			}
			else{
				grav = 0.1
			}
		}
	}
}
flash = max(flash-0.04, 0);