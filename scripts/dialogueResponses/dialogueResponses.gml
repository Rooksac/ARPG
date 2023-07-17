// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogueResponses(response){
	switch(response){
		case 0: break;
		case 1: textBoxCreate("Good luck on your Adventure!", [-1], 2); break;
		case 2: textBoxCreate("Don't be so lame, bro", ["3:Sorry, I'll try to stay positive!", "0:Whatever"]); break;
		case 3: textBoxCreate("That's the spirit!"); break;
		case 4: {
			textBoxCreate("Thanks! I shall write a song about your bravery!");
			textBoxCreate("I was eating some delicious cheese in that cave over\nthere when I got startled by some monsters!");
			textBoxCreate("I dropped my cheese and ran!\nNow I can't stop thinking about my cheese sitting all alone in that cave.\nWould you bring it back to me?" );
			global.questStatus[? "theCheeseQuest"] = 1;
			break;
		}
		case 5: textBoxCreate("Oh well. Maybe some other hero will help me"); break;
		case 6: purchaseItem(activate.item, activate.itemAmount, activate.itemCost); break;
		default: break;
	}
}