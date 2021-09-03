direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;

if (mouse_check_button_pressed(mb_left)) {    
    // creating the bullet
    bullet = instance_create(x,y-6,obj_bullet);
    bullet.objectFrom = obj_boss2;
    bullet.direction = direction;
    bullet.direction += irandom_range(-2,2);
    bullet.image_angle = bullet.direction;
    bullet.speed = 12.5;
}
