speed = 3;

obj_gun.visible = false;

if (rollFrameNum >= array_length_1d(rollFrame)-1) {
    rollFrameNum = 0;
    roll = false;
}

rollFrameNum += 0.3;

sprite_index = rollFrame[rollFrameNum];
