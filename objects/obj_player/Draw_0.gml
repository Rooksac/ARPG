if (state == playerStateHook && image_index != 3){
	drawHookChain();
}
draw_sprite(spr_shadow, 0, floor(x), floor(y))

if ((invulnerable != 0) && (invulnerable mod 8 < 2) && (flash == 0)){
 //skip draw	
}
else{
	if (flash != 0){
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader, "flash");
		shader_set_uniform_f(uFlash, flash)
	}
	draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
	)
	
	if (shader_current() != -1){
		shader_reset();
	}
}

if (state == playerStateHook && image_index == 3){
	drawHookChain();
}

function drawHookChain(){
	var originX = floor(x);
	var originY = floor(y)-9;
	
	var chains = hook div hookSize;
	var hookDirX = sign(hookX);
	var hookDirY = sign(hookY);
	for (var i=0; i<chains; i++){
		draw_sprite(
		spr_hook_chain,
		0,
		originX+hookX-(i*hookSize*hookDirX),
		originY+hookY-(i*hookSize*hookDirY)
		);
	}
	draw_sprite(spr_hook_blade, image_index, originX+hookX, originY+hookY)
}