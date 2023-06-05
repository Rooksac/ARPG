/// update camera

if (instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}

//update destination

x += (xTo-x)/15;
y += (yTo-y)/15;


//keep camera center inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Screenshake

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x-viewWidthHalf, y-viewHeightHalf);