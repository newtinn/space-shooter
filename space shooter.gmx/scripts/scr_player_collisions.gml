/// collisions with wall for player

// main room
if (room == rm_main) {
    if (x < 72) && (y < 292 || y > 352) {
        x = 72;
    }
    if (x < 72) {
        if (y < 300) {
            y = 300;
        }
        if (y > 346) {
            y = 346;
        }
    }
    if (x > room_width-70) && (y < 292 || y > 352) {
        x = room_width-70;
    }
    if (x > room_width-70) {
        if (global.boss[0] == true) {
            if (y < 296) {
                y = 296;
            }
            if (y > 346) {
                y = 346;
            }
        } else {
            x = room_width-70;
        }
    }
    
    if (y < 78) {
        y = 78;
    }
    
    if (y > room_height-70) {
        y = room_height-70;
    }
}

// boss 1
if (room == rm_boss1) {
    if (x < 70) {
        x = 70;
    }
    if (x > room_width-70) {
        x = room_width-70;
    }
    if (y < 78) && ((x < (room_width/2)-28) || (x > (room_width/2)+28)) {
        if (obj_door.sprite_index == spr_door_horizontal_open) {
            if (obj_door.image_number >= obj_door.image_number - 3) {
                y = 78;
            }
        }
    }
    if (obj_door.sprite_index == spr_door_horizontal_open) {
        if (y < 78) {
            y = 78;
        }
    }
    if (obj_door.sprite_index == spr_door_horizontal_close) {
        if (y < 64) {
            if (obj_door.image_number >= obj_door.image_number - 1) {
                if (x < (room_width/2)-28) {
                    x = (room_width/2)-28;
                }
                if (x > (room_width/2)+28) {
                    x = (room_width/2)+28;
                }
            }
        }
        if (y < 78) {
            if ((x < (room_width/2)-32) || (x > (room_width/2)+32)) {
                y = 78;
            }
        }
    }
    
    if (y > room_height-70) {
        y = room_height-70;
    }
}

// boss 1 corridor
if (room == rm_boss1_corridor) {
    if (y < 292) {
        y = 292;
    }
    if (x > 324) && (x < room_width-16) {
        if (y > 350) {
            y = 350;
        }
    }
    if (x < 260) {
        x = 260;
    } 
    if (y > 354) {
        if (x > 316) {
            x = 316;
        }
    }
}

// boss 2
if (room == rm_boss2) {
    if (x < 70) {
        if (y < 230) || (y > 280) {
            x = 70;
        }
    }
    if (x < 70) {
        if (y < 232) {
            y = 232;
        }
        if (y > 278) {
            y = 278;
        }
    }
    if (x > room_width-70) {
        x = room_width-70;
    }
    if (y < 78) {
        y = 78;
    }
    /*if (y > room_height-70) {
        if (x < 280) || (x > 360) {
            y = room_height-70;
        }
        if (x < 280) {
            x = 280;
        }
        if (x > 360) {
            x = 360;
        }
    }*/
    if (y > room_height-70) && ((x < 288) || (x > 352)) {
        y = room_height-70;
    }
    if (y > room_height-70) {
        if (x < 290) {
            x = 290;
        }
        if (x > 350) {
            x = 350;
        }
    }
}

if (room == rm_boss3) {
    if (x < 70) {
        x = 70;
    }
    if (x > room_width-78) {
        x = room_width-78;
    }
    if (y < 70) {
        if (x > 288 && x < 352) {
            if (x < 292) {
                x = 292;
            }
            if (x > 348) {
                x = 348;
            }
        } else {
            y = 70;
        }
    }
    if (y > room_height-70) {
        y = room_height-70;
    }
}
