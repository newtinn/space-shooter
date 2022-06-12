// checking position to create bullet
var newx = x + lengthdir_x(4, image_angle);
var newy = y + lengthdir_y(4, image_angle);

// creating the bullet
bullet = instance_create(newx,newy - 4,obj_bullet);
bullet.objectFrom = obj_henchman;
bullet.direction = direction;
// playing sound
var shoot = choose(snd_shoot1,snd_shoot2);

if (global.mute == false) audio_play_sound(shoot,2,false);

bullet.direction += irandom_range(-2,2);
bullet.image_angle = bullet.direction;
bullet.speed = 12.5;
bullet.origSpeed = 12.5;
