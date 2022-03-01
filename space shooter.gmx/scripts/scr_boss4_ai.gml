if (mode == 0) {
    if (anglePicked == false) {
        angleNew = irandom_range(0,360);
        anglePicked = true;
    }
    
    image_angle -= min(abs(angle_difference(direction,angleNew)), 5) * sign(angle_difference(direction,angleNew));
    
    if (abs(angle_difference(image_angle,angleNew)) <= 10) {
        image_angle = angleNew;
        direction = image_angle;
        speed = 1;
    } else {
        speed = 0;
    }
    
    if (speed > 0) {
        if (frameNum < array_length_1d(frame)-1) {
            frameNum += 0.1;
        } else {
            frameNum = 0;
        }
        sprite_index = frame[floor(frameNum)];
    }
}

if (mode == 1) {
    if (anglePicked == false) {
        angleNew = irandom_range(0,360);
        anglePicked = true;
    }
    
    image_angle -= min(abs(angle_difference(direction,angleNew)), 12.5) * sign(angle_difference(direction,angleNew));
    
    if (abs(angle_difference(image_angle,angleNew)) <= 20) {
        image_angle = angleNew;
        direction = image_angle;
        speed = 3;
    } else {
        speed = 0;
    }

    attackNum += 0.125;
    
    if (attackNum >= 2) {
        attackNum = 0;
    }
    
    
    sprite_index = attack[attackNum];
}
