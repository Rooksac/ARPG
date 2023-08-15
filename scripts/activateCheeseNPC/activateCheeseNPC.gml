// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activateCheeseNPC(){
	var hasCheese = (global.iLifted != noone && global.iLifted.object_index == obj_cheese);
	switch (global.questStatus.theCheeseQuest){
		//quest not started
		case 0:{
			//the player might have the cheese anyway
			if (hasCheese){
				//complete quest
				textBoxCreate("Hey!  Did you find that cheese lying in a cave by any chance?");
				textBoxCreate("I thought I would never see it again! A million blessings upon you!");
				global.questStatus.theCheeseQuest = 2;
				with(obj_cheese){
					lifted = false;
					persistent = true;
					entityActivateScript = -1;
				}
				global.iLifted = noone;
				with (obj_player) {
					spriteIdle = spr_sorcerer;
				}
			}
			else{
				//offer quest
				textBoxCreate("Hey! You look like the strong adventuring type!");
				textBoxCreate("I find myself in need of some assistance.  Would you perhaps lend your services?", 
				["4:Sure!  I was looking for something to do!",
				"5:You must think time grows on trees!"])
			}
		}
		break;
		//quest in progress
		case 1:{
			if (hasCheese){
				//complete quest
				textBoxCreate("Wow!  You rescued my Cheese!");
				textBoxCreate("I thought I would never see it again! A million blessings upon you!");
				global.questStatus.theCheeseQuest = 2;
				with(obj_cheese){
					lifted = false;
					persistent = true;
					entityActivateScript = -1;
				}
				global.iLifted = noone;
				with (obj_player) {
					spriteIdle = spr_sorcerer;
				}
			}
			else{
				//clue reminder
				textBoxCreate("Did you get my cheese yet?  It's in that cave to the northwest.");
				textBoxCreate("You might need a special item to get in there...");
			}
		}
		break;
		//quest completed
		case 2:{
			textBoxCreate("Thanks again for rescuing my beloved cheese!  I'll never drop it again!")
		}
		break;
	}
}