if (titleVisible > 0){
	draw_sprite(spr_title_screen, 0, 0, -RESOLUTION_H + titleVisible * RESOLUTION_H);
	draw_set_alpha(titleVisible * abs(sin(get_timer() * 0.000001 * pi)));
	draw_sprite(spr_title_screen, 1, 0, 0);
	draw_set_alpha(1.0);
}

if (slotsVisible > 0){
	//draw save slots
	draw_set_alpha(slotsVisible);
	for (var slot = 0; slot <= 2; slot ++){
		//draw boxes
		var yy = 32 + slot*96;
		var xx = 320;
		var img = 2;
		if (slotSelected == slot){
			img = 3;
			draw_sprite(spr_title_select, 0, xx-32, yy+24);
		}
		draw_sprite_stretched(spr_textbox_bg, img, xx, yy, 300, 65);
		//draw save data
		draw_set_font(fnt_text);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		if (slotData[slot] == -1){
			draw_text(xx+8, yy+8, "Start New Game")
		}
		else{
			draw_text(xx+8, yy+8, roomToAreaName(slotData[slot].room))
			
			//draw health
			var playerHealth = slotData[slot].playerHealth;
			var playerHealthMax = slotData[slot].playerHealthMax;
			var playerHealthFrac = frac(playerHealth);

			playerHealth -= playerHealthFrac

			for (var i = 1; i<= playerHealthMax; i++){
				var imageIndex = (i > playerHealth);
				if (i == playerHealth + 1){
					imageIndex += (playerHealthFrac > 0);
					imageIndex += (playerHealthFrac > 0.25);
					imageIndex += (playerHealthFrac > 0.5);
				}
				draw_sprite(spr_health, imageIndex, xx + 150 + ((i-1) * 32), yy + 20);
			}
			//draw coins
			draw_sprite(spr_coin_UI, 0, xx+8, yy+28);
			draw_text(xx+30, yy+25, slotData[slot].playerCoins);
		}
	}
	draw_set_alpha(1.0)
}









