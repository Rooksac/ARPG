function enemyWait(){
	if (++stateWait >= stateWaitDuration){
		stateWait = 0;
		state = stateNext;
	}
}