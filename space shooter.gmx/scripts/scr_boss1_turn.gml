if (instance_exists(obj_player)) {
    if (turn == true) && (global.boss1health > 0) {
        if (anglePicking == false) && (stuckWallNew == false) {
            angle = floor(point_direction(x,y,obj_player.x,obj_player.y));
            anglePicking = true;
        }
        
        if (anglePicking == true) && ((thisSide == "" || obj_player.cornerSide == "") || (thisSide != obj_player.cornerSide) ) {
            if (turnProcess == false) {
                diffangle = angle_difference(image_angle,angle);
                direction -= min(abs(diffangle), 5) * sign(diffangle);
            }
        }
        
        /*if (obj_player.inCorner == true) {
            if (thisSide == obj_player.cornerSide) {
                stuckWallNew = true;
                show_debug_message(thisSide);
                if (thisSide == "top") {

                }
                if (thisSide == "bottom") {
                    
                }
                if (thisSide == "left") {
                    
                }
                if (thisSide == "right") {
                
                }
            }
        }*/
        if (thisSide == obj_player.cornerSide) && (thisSide != "" && obj_player.cornerSide != "") {
            if (thisSide == "top" || thisSide == "bottom") {
                if (obj_player.x > x) {
                    diffangle = angle_difference(direction,0);
                    diffanglePos = abs(diffangle);
                    if (diffanglePos > 10) {
                        direction -= min(abs(diffangle), 5) * sign(diffangle);
                        if (thisSide == "top") y -= 5;
                        if (thisSide == "bottom") y += 5;
                        diffanglePos -= 5;
                    } else {
                        direction = 0;
                        turn = false;
                    }
                }
                if (obj_player.x < x) {
                    diffangle = angle_difference(direction,180);
                    diffanglePos = abs(diffangle);
                    if (diffanglePos > 10) {
                        direction -= min(abs(diffangle), 5) * sign(diffangle);
                        if (thisSide == "top") y -= 5;
                        if (thisSide == "bottom") y += 5;
                        diffanglePos -= 5;
                    } else {
                        direction = 180;
                        turn = false;
                    }
                }
            }
            if (thisSide == "left" || thisSide == "right") {
                if (obj_player.y > y) {
                    diffangle = angle_difference(direction,270);
                    diffanglePos = abs(diffangle);
                    if (diffanglePos > 10) {
                        direction -= min(abs(diffangle), 5) * sign(diffangle);
                        if (thisSide == "left") x -= 3;
                        if (thisSide == "right") x += 3;
                        diffanglePos -= 5;
                    } else {
                        direction = 270;
                        turn = false;
                    }
                }
                if (obj_player.y < y) {
                    diffangle = angle_difference(direction,90);
                    diffanglePos = abs(diffangle);
                    if (diffanglePos > 10) {
                        direction -= min(abs(diffangle), 5) * sign(diffangle);
                        if (thisSide == "left") x -= 3;
                        if (thisSide == "right") x += 3;
                        diffanglePos -= 5;
                    } else {
                        direction = 90;
                        turn = false;
                    }
                }
            }
        }
        if ((x <= 208) && obj_player.cornerSide == "top-left") {
            if (obj_player.y < y) {
                diffangle = angle_difference(direction,90);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 7) * sign(diffangle);
                    x -= 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 90;
                    turn = false;
                }
            }
        }
        if ((x <= 208) && obj_player.cornerSide == "bottom-left") {
            if (obj_player.y > y) {
                diffangle = angle_difference(direction,270);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 7) * sign(diffangle);
                    x -= 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 270;
                    turn = false;
                }
            }
        }
        if ((y <= 208) && obj_player.cornerSide == "top-left") {
            if (obj_player.x < x) {
                diffangle = angle_difference(direction,180);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 5) * sign(diffangle);
                    y -= 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 180;
                    turn = false;
                }
            }
        }
        if ((y <= 208) && obj_player.cornerSide == "top-right") {
            if (obj_player.x > x) {
                diffangle = angle_difference(direction,0);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 5) * sign(diffangle);
                    y -= 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 0;
                    turn = false;
                }
            }
        }
        if ((y >= room_height-208) && obj_player.cornerSide == "bottom-left") {
            if (obj_player.x < x) {
                diffangle = angle_difference(direction,180);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 7) * sign(diffangle);
                    y += 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 180;
                    turn = false;
                }
            }
        }
        if ((y >= room_height-208) && obj_player.cornerSide == "bottom-right") {
            if (obj_player.x > x) {
                diffangle = angle_difference(direction,0);
                diffanglePos = abs(diffangle);
                if (diffanglePos > 10) {
                    direction -= min(abs(diffangle), 7) * sign(diffangle);
                    y += 5;
                    show_debug_message(diffanglePos);
                    diffanglePos -= 5;
                } else {
                    direction = 0;
                    turn = false;
                }
            }
        }
    }
}
