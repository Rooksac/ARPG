// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyTileCollision(){
	var collision = false
	//Horizontal tile Collision
	if(tilemap_get_at_pixel(collisionMap, x+hSpeed, y)){
		x-= x mod TILE_SIZE
		if(sign(hSpeed)==1){
			x += TILE_SIZE-1
		}
		hSpeed = 0
		collision = true
	}
	x += hSpeed
	
	//Vertical tile Collision
	if(tilemap_get_at_pixel(collisionMap, x, y+vSpeed)){
		y-= y mod TILE_SIZE
		if(sign(vSpeed)==1){
			y += TILE_SIZE-1
		}
		vSpeed = 0
		collision = true
	}
	y += vSpeed
	
	return collision
}