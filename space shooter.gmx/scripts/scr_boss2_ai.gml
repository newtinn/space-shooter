randomize();

if (instance_exists(obj_player)) && (global.boss2health > 0) {
    // picking point to go to
    if (mode == 1) {
        if (shootReps <= 0) {
            pointPicked = false;
        }
        
        if (pointPicked == true) {
            //shootReps = 5;
            //show_debug_message("point picked true");
            currentPuddle = pickPuddle;
            direction = point_direction(x,y,posGotoX,posGotoY);
            image_angle = direction;
            
            if (distance_to_point(posGotoX,posGotoY) > 5) {
                move_towards_point(posGotoX,posGotoY,1.8);
                walking = true;
            } else {
                speed = 0;
                pointPicked = false;
                walking = false;
                mode = 3;
            }
        }
    }
    
    if (mode == 2) {
        staticCounter = 0;
    
        direction = point_direction(x,y,obj_player.x,obj_player.y);
        image_angle = direction;
        sprite_index = spr_boss2_shoot;
        
        if (shootReps > 0) {
            if (shootTimer >= 0) {
                shootTimer -= 1;
            } else {
                // creating the bullet
                bullet = instance_create(x,y - 6,obj_bullet);
                bullet.objectFrom = obj_boss2;
                bullet.direction = direction;
                bullet.direction += irandom_range(-2,2);
                bullet.image_angle = bullet.direction;
                bullet.speed = 12.5;
                bullet.origSpeed = 12.5;
                
                shootReps -= 1;
                shootTimer = 25;
            }
        } else {
            pointPicked = false;
            mode = 1;
        }
    }
    
    // just poking head
    if (mode == 3) {
        direction = point_direction(x,y,obj_player.x,obj_player.y);
        image_angle = direction;
        sprite_index = spr_boss2_head;
        
        staticCounter += 1;
        if (staticCounter >= 75) {
            mode = 2;
        }
    }
}

if (!instance_exists(obj_player)) {
    speed = 0;
    if (walking == true) {
        sprite_index = frame[0];
    }
    walking = false;
}

if (global.boss2health <= 0) {
    if (puddlePicked == false) {
        // finding the nearest puddle
        if (x < room_width/2) && (y < room_height/2) {
            closestPuddle = 0;
        }
        if (x < room_width/2) && (y > room_height/2) {
            closestPuddle = 1;
        }
        if (x > room_width/2) && (y < room_height/2) {
            closestPuddle = 3;
        }
        if (x > room_width/2) && (y > room_height/2) {
            closestPuddle = 2;
        }
        puddlePicked = true;
    }
    
    if (distance_to_point(puddleX[closestPuddle],puddleY[closestPuddle]) > 1) {
        move_towards_point(puddleX[closestPuddle],puddleY[closestPuddle],1.8);
        image_angle = point_direction(x,y,puddleX[closestPuddle],puddleY[closestPuddle]);
        walking = true;
    } else {
        speed = 0;
        if (image_alpha > 0) {
            sprite_index = spr_boss2_head;
            walking = false;
            image_alpha -= 0.025;
        } else {
            instance_destroy();
        }
    }
}
