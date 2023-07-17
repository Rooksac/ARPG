titleVisible = 0.0
keyPressed = false;
slotsVisible = 0.0;
slotSelected = 0;
loadingStarted = false;

for (var slot = 0; slot <= 2; slot++){
	var filename = "Save" + string(slot) + ".sav";
	if (file_exists(filename)){
		slotData[slot] = loadJSONFromFile(filename);
	}
	else{
		slotData[slot] = -1;
	}
}









