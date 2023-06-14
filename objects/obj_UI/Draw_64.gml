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