//Essential entity setup
z = 0;
flash = 0;
flashShader = sh_white_flash
uFlash = shader_get_uniform(flashShader, "flash");
lifted = 0;
thrown = false;
entityDropList = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));
pitCollisionMap = layer_tilemap_get_id(layer_get_id("Collision_Pit"));