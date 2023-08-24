// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collectCoins(amount){
	global.playerCoins += amount
}

function collectAmmo(array){
	//array = [type, amount]
	global.playerAmmo[array[0]] += array[1]
}

function collectKeys(){
	global.playerKeys +=1;
	global.keysFound[$ keyLocation] = true
}

function collectHealth(){
	global.playerHealth = min(global.playerHealth + 1, global.playerHealthMax)
}