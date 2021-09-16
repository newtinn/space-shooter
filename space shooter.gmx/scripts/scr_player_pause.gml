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
    if (instance_exists(obj_boss3)) {
        boss3 = instance_create(obj_boss3.x,obj_boss3.y,obj_pause_object_3d);
        boss3.sprite_index = obj_boss3.sprite_index;
        boss3.image_angle = obj_boss3.image_angle;
        boss3.depth = obj_boss3.depth;
        instance_deactivate_object(obj_boss3);
    }
} else {
    instance_activate_all();
}
