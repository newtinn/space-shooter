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
if (global.prevroom == "") && (room == rm_main) {
    x = room_width/2;
    y = room_height/2;
}
if (global.prevroom == rm_boss3_corridor) && (room == rm_boss2) {
    x = 320;
    y = 384;
}
if (global.prevroom == rm_boss3) && (room == rm_boss3_corridor) {
    x = 320;
    y = 416;
}   
