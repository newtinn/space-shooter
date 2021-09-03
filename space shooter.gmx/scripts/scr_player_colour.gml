/// changing colours
if (keyboard_check_pressed(vk_left)) {
    global.myColour -= 1;
}
if (keyboard_check_pressed(vk_right)) {
    global.myColour += 1;
}

if (global.myColour > array_length_1d(global.playerColour)-1) {
    global.myColour = 0;
}

if (global.myColour < 0) {
    global.myColour = array_length_1d(global.playerColour)-1;
}
