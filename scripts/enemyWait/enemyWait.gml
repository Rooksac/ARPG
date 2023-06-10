// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyWait(){
	if (++stateWait >= stateWaitDuration){
		stateWait = 0;
		state = stateNext;
	}
}