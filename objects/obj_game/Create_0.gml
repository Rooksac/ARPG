randomize();

global.gameSaveSlot = 0;


global.gamePaused = false;
global.iCamera = instance_create_layer(0, 0, layer, obj_camera);
global.textSpeed = .75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.iLifted = noone;
//UI
global.iUI = instance_create_layer(0, 0, layer, obj_UI);
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerCoins = 0;
global.playerKeys = 0;

//Items
global.playerHasItems = false;
global.playerEquipped = ITEM.NONE;
global.playerAmmo = array_create(ITEM.TYPE_COUNT, -1);
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerAmmo[ITEM.BOMB] = 0;
global.playerAmmo[ITEM.AXE] = 0;


global.questStatus = 
{
	"theCheeseQuest":0
}
global.caveOpen = false;
global.openChests = 
{
	"village" : false,
	"cave" : false,
	"forest" : false
}
global.keysFound = 
{
	"village" : false,
	"cave" : false,
	"forest" : false
}
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);


room_goto(ROOM_START);
