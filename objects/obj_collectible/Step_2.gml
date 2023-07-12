/// @description Insert description here
// You can write your code in this editor
fric = 0.05;
if (z == 0){
	fric = 0.10
};
flash = max(flash-0.04, 0)
//magnetise coins
if (instance_exists(obj_player)){
	var px = obj_player.x;
	var py = obj_player.y;
	var dist = point_distance(x, y, px, py);
	if (dist < 16){
		spd  += 0.25;
		direction = point_direction(x, y, px, py);
		spd = min(spd, 3);
		fric = 0;
		if (dist < 5){ //collect radius
			if (collectScriptArgs != -1){
				script_execute(collectScript, collectScriptArgs)
			}
			else{
				if (collectScript != -1){
					script_execute(collectScript)
				}
			}
			instance_destroy()
		}
	}
}

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

x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
spd = max(spd-fric, 0);
depth = -bbox_bottom;