// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropItems(xPos, yPos, itemsArr){
	var items = array_length(itemsArr);
	
	if (items > 1){
		var anglePerItem = 360/items;
		var angle = random(360);
		for(var i=0; i<items; i++){
			with (instance_create_layer(xPos, yPos, "Instances", itemsArr[0])){
				direction = angle
				spd = 0.75 + (items * 0.1) + random(0.1);
			}
			angle += anglePerItem;
		}
	}
	else{
		instance_create_layer(xPos, yPos, "Instances", itemsArr[0]);
	}
}