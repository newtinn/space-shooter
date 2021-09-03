// check if on edge
if (x > 96) && (x < room_width-96) {
    if (y < 96) {
        cornerSide = "top";
    }
    if (y > room_height-96) {
        cornerSide = "bottom";
    }
}
if (x < 96) {
    if (y > 96) && (y < room_height-96) {
        cornerSide = "left";
    }
}
if (x > room_width-96) {
    if (y > 96) && (y < room_height-96) {
        cornerSide = "right";
    }
}

// checking if in corner
if (x < 96) {
    if (y < 96) {
        cornerSide = "top-left";
    }
    if (y > room_height-96) {
        cornerSide = "bottom-left";
    }
}
if (x > room_width-96) {
    if (y < 96) {
        cornerSide = "top-right";
    }
    if (y > room_height-96) {
        cornerSide = "bottom-right";
    }
}

// checking if outside region
if (x > 96) && (x < room_width-96) {
    if (y > 96) && (y < room_height-96) {
        cornerSide = "";
    }
}
