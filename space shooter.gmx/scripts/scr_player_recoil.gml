if (instance_exists(obj_player)) {
    obj_player.speed = 0;
    var recoilSpeed = 0.5;
    if (obj_player.x > mouse_x) {
        obj_player.x += recoilSpeed;
    }
    if (obj_player.x < mouse_x) {
        obj_player.x -= recoilSpeed;
    }
    if (obj_player.y > mouse_y) {
        obj_player.y += recoilSpeed;
    }
    if (obj_player.y < mouse_y) {
        obj_player.y -= recoilSpeed;
    }
}
