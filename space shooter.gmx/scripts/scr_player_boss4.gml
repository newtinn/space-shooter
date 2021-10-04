if (instance_exists(obj_boss4)) {
    if (distance_to_object(obj_boss4) < 4) {
        if (obj_boss4.anim == 2) {
            if (obj_boss4.animNum >= 6) && (obj_boss4.animNum <= 10) {
                // creating death animation
                anim = instance_create(x,y,obj_player_death);
                anim.image_angle = image_angle;
                anim.direction = direction;
                anim.depth = depth;
                instance_destroy();
            }
        }
    }
}
