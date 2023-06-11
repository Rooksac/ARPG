// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurtEnemy(enemy, dmg, src, knockBack){
	with(enemy){
		if (state != ENEMY_STATE.DIE){
				enemyHP -= dmg;
				if(enemyHP <= 0){
					state = ENEMY_STATE.DIE
				}
				else{
					if (state != ENEMY_STATE.HURT){
						statePrev = state;
					}
					state = ENEMY_STATE.HURT
				}
				localFrame = 0;
				if (knockBack != 0){
					var knockDirection = point_direction(x, y, src.x, src.y);
					xTo = x - lengthdir_x(knockBack, knockDirection);
					yTo = y - lengthdir_y(knockBack, knockDirection);
			}
		}
	}
}