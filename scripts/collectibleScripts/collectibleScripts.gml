// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collectCoins(amount){
	global.playerCoins += amount
}

function collectAmmo(array){
	//arry = [type, amount]
	global.playerAmmo[array[0]] += array[1]
}