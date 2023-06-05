//set up camera
cam = view_camera[0];

follow = obj_player;

viewWidthHalf = camera_get_view_width(cam) * 0.5
viewHeightHalf = camera_get_view_height(cam) * 0.5

xTo = xstart
yTo = ystart

//how long the screen shakes for
shakeLength = 0
//how big of a shake
shakeMagnitude = 0
//how much time remains in the shake
shakeRemain = 0
