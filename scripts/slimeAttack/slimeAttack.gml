// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeAttack(){
	playerAnimateSprite()
	if (animationEnd){
		sprite_index = spriteIdle;
		localFrame = 0;
		stateNext = ENEMY_STATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMY_STATE.WAIT;
	}
}