///// pausing
if (keyboard_check_pressed(vk_escape)) {
    if (!instance_exists(obj_fade)) {
        global.paused = !global.paused;
    }
}

if (global.paused == true) {
    /* Deactivating bosses */
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
    
    if (instance_exists(obj_boss4)) {
        boss4 = instance_create(obj_boss4.x,obj_boss4.y,obj_pause_object_3d);
        boss4.sprite_index = obj_boss4.sprite_index;
        boss4.image_angle = obj_boss4.image_angle;
        boss4.depth = obj_boss4.depth;
        boss4.type = "boss4";
        instance_deactivate_object(obj_boss4);
    }
    
    /* changing colours of buttons */
    // back to game button
    if ((mouse_x > 244) && (mouse_x < 390)) && ((mouse_y > 240) && (mouse_y < 252)) {
        backtogameCol = c_red;
    } else {
        backtogameCol = c_white;
    }
    
    // restart button
    if ((mouse_x > 272) && (mouse_x < 362)) && ((mouse_y > 266) && (mouse_y < 278)) {
        restartCol = c_red;
    } else {
        restartCol = c_white;
    }
    
    // menu button
    if ((mouse_x > 292) && (mouse_x < 340)) && ((mouse_y > 288) && (mouse_y < 300)) {
        menuCol = c_red;
    } else {
        menuCol = c_white;
    }
    
} else {
    instance_activate_all();
}
