if (anim == 0) {
    animNum = 0;
    sprite_index = walk[0];
}

if (anim == 1) {
    if (animNum < array_length_1d(walk)-1) {
        animNum += 0.15;
    } else {
        animNum = 0;
    }

    sprite_index = walk[animNum];
    
    if (back == false) {
        // walking towards the player
        if (instance_exists(obj_player)) {
            if (distance_to_object(obj_player) > 0.2) {
                move_towards_point(obj_player.x,obj_player.y,1);
                var pd = point_direction(x, y, obj_player.x, obj_player.y);
                var dd = angle_difference(image_angle-90, pd);
                image_angle -= min(abs(dd), 10) * sign(dd);
            } else {
                speed = 0;
                count = 0;
                anim = 2;
            }
        } else {
            speed = 0;
            sprite_index = walk[0];
        }
    } else {
        if (back == true) {
            if (backNum < 20) {
                speed = -0.25;
                backNum += 1;
            } else {
                backNum = 0;
                back = false;
            }
        }
    }
}

if (anim == 2) {
    if (animNum < array_length_1d(smash)-1) {
        animNum += 0.3;
    } else {
        animNum = 0;
        count += 1;
    }
    
    if (count > 2) {
        anim = 1;
    }

    sprite_index = smash[animNum];
}
