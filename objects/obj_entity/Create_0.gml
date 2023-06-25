//Essential entity setup
z = 0;
flash = 0;
flashShader = sh_white_flash
uFlash = shader_get_uniform(flashShader, "flash");
lifted = 0;
thrown = false;
entityDropList = -1;