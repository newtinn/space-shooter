///// pausing
if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;
}

if (global.paused == true) {
    if (instance_exists(obj_boss1)) {
        boss1 = instance_create(obj_boss1.x,obj_boss1.y,obj_pause_object_3d);
        boss1.sprite_index = obj_boss1.sprite_index;
        boss1.image_angle = obj_boss1.image_angle;
        instance_deactivate_object(obj_boss1);
        instance_deactivate_object(obj_boss1_col);
    }
} else {
    instance_activate_all();
}
