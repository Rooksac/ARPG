//draw health
var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);

playerHealth -= playerHealthFrac

for (var i = 1; i<= playerHealthMax; i++){
	var imageIndex = (i > playerHealth);
	if (i == playerHealth + 1){
		imageIndex += (playerHealthFrac > 0);
		imageIndex += (playerHealthFrac > 0.25);
		imageIndex += (playerHealthFrac > 0.5);
	}
	draw_sprite(spr_health, imageIndex, 20 + ((i-1) * 32), 20);
}

//draw coins

var xx, yy;
//coins icon
xx = 45;
yy = 45;
draw_sprite(spr_coin_UI, 0, xx, yy);

//coins text
draw_set_color(c_black);
draw_set_font(fnt_UI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

xx += sprite_get_width(spr_coin_UI) + 4;
yy = 48;

var str = string(global.playerCoins);
draw_text(xx+1, yy, str);
draw_text(xx-1, yy, str);
draw_text(xx, yy+1, str);
draw_text(xx, yy-1, str);
draw_set_color(c_white);
draw_text(xx, yy, str);
//draw item box
var xx = 8;
var yy = 35;

draw_sprite(spr_item_box_UI, 0, xx, yy);
if (global.playerHasItems){
	draw_sprite(spr_item_UI, global.playerEquipped, xx, yy);
	if (global.playerAmmo[global.playerEquipped] != -1){
		draw_set_font(fnt_UI);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_color(c_white);
		draw_text
		(
		xx + sprite_get_width(spr_item_box_UI)-2,
		yy + sprite_get_height(spr_item_box_UI)-2,
		string(global.playerAmmo[global.playerEquipped])
		)
	}
}