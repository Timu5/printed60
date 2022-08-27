module middle_holes(x, y, width) {
    translate([x + ((width - 1) * space)/2 ,y,1.5]) {
        cylinder(h=20,d= 4+tolerance, center=true); 

        translate([2*grid,4*grid,0])
            cylinder(h=20,d=3+tolerance+0.01, center=true);
        translate([-3*grid,2*grid,0])
            cylinder(h=20,d=3+tolerance+0.01, center=true);
    }
}

module middle_plate(w, h) {
    translate([0,0, -5])
        top_plate(w, h);
}

module middle_layer(w, h, layout, offset) {
    difference() {
        middle_plate(15, 5);

        for(j = [0: len(layout)-1]){
            row = layout[j];
            offsets = offset[j];
            for(i = [0: len(row) - 1]) {
                key = row[i];
                offset = offsets[i] - 1;
                middle_holes(offset * space, -j * space, key);
            }
        }
    }
}