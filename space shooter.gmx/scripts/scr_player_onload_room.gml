if (global.prevroom == rm_boss1_corridor) && (room == rm_main) {
    x = 64;
    y = 320;
}
if (global.prevroom == rm_boss1) && (room == rm_boss1_corridor) {
    x = 288;
    y = 416;
}
if (global.prevroom == rm_boss2) && (room == rm_main) {
    x = room_width-64;
    y = 320;
}
