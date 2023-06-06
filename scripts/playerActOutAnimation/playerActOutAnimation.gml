//Complete an animation and optionally carry out a script at the end
function playerActOutAnimation(spr, endScript = -1){
	state = playerStateAct;
	sprite_index = spr
	animationEndScript = endScript
	localFrame = 0;
	image_index = 0
	playerAnimateSprite()
}