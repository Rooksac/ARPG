//rotate axe
if(direction <= 270 && direction >= 90){
	image_angle += 15
}
else{	
	image_angle -= 10
}

//hit things
var entity = instance_place(x, y, obj_entity);
var broken = false;
if (entity != noone){
	with (entity){
		if (object_is_ancestor(object_index, obj_enemy)){
			hurtEnemy(id, 10, other.id, 20);
			broken = true;
		}
		else {
			if (entityHitScript != -1){
				script_execute(entityHitScript);
				broken = true;
			}
		}
	}
	if (broken) {
		instance_destroy()
	}
}

//destroy if it leaves camera bounds
var cam = view_camera[0];
var x_cam = camera_get_view_x(cam);
var y_cam = camera_get_view_y(cam);
if (!point_in_rectangle(x, y, x_cam, y_cam, x_cam + camera_get_view_width(cam), y_cam + camera_get_view_height(cam))){
	instance_destroy()
}