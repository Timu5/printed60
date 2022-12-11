// TODO

module border(w, h, thickness, height) {
    total_width = space*w + edge + thickness * 2;
    total_height = space*h + edge + thickness * 2;
    start_x = -thickness - (space + edge)/2;
    start_y =  -total_height + (space + edge) / 2 + thickness;
    translate([start_x, start_y, -10]) {
        cube([thickness, total_height, height]);
        cube([total_width, thickness, height]);

        translate([total_width - thickness, 0, 0])
            cube([thickness, total_height, height]);
        translate([0, total_height - thickness, 0])
            cube([total_width, thickness, height]);
    }
}