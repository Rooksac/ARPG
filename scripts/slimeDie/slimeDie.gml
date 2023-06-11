// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeDie(){
	sprite_index = spriteDie;
	 var distanceToGo = point_distance(x, y, xTo, yTo);
	 
	 if (distanceToGo > enemySpeed){
		 dir = point_direction(x, y, xTo, yTo);
		 hSpeed = lengthdir_x(enemySpeed, dir);
		 vSpeed = lengthdir_y(enemySpeed, dir);
		 
		 enemyTileCollision();
	 }
	 else{
		 x = xTo;
		 y = yTo;
	 }
	 direction = dir
	 playerAnimateSprite()
	
	if (++corpseFade > corpseFadeAfter){
		image_alpha -= 1/corpseFadeDuration
		if(image_alpha <= 0){
			instance_destroy()
		}
	}
}