
module top_holes(x, y, width) {
        translate([x + ((width - 1) * space)/2 ,y,0]) {
            cube([14+tolerance, 14+tolerance, 2], center = true);        
    } 
}

module top_plate(w, h) {
    total_width = space*w + edge;
    total_height = space*h + edge;
    translate([total_width / 2 - (space+edge) /2, -total_height/2 + (space+edge) /2,0])
    cube([total_width, total_height, 1.5], center = true);
}

module top_layer(w, h, layout, offset) {
    difference() {
        top_plate(15, 5);

        for(j = [0: len(layout)-1]){
            row = layout[j];
            offsets = offset[j];
            for(i = [0: len(row) - 1]) {
                key = row[i];
                offset = offsets[i] - 1;
                top_holes(offset * space, -j * space, key);
            }
        }
    }
}