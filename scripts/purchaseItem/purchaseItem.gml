// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function purchaseItem(item, amount, cost){
	if (global.playerCoins >= cost){
		global.playerHasItems = true;
		global.playerItemUnlocked[item] = true;
		global.playerAmmo[item] += amount;
		global.playerCoins -= cost;
		global.playerEquipped = item;
		instance_destroy(activate);
		
		var desc = ""
		switch (item){
			case ITEM.BOMB: desc = "Pull one out to light the fuse\nPress space to throw!" break;
			case ITEM.AXE: desc = "Use the ctrl key to\nchop down your enemies from a distance" break;
			case ITEM.HOOK: desc = "Hook precious items towards you!\nOr yourself towards precious items!" break;
			default: desc = "No description found" break;
		}
		textBoxCreate(desc);
	}
	else{
		textBoxCreate("Not enough money");
	}
}