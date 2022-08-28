module hole_body(x, y) {
    translate([x*space, y*space, -4.25]) 
        cylinder(h=5-1.5, d=3.5);

}

module hole(x, y) {
    translate([x*space, y*space, -50]) 
        cylinder(h=100, d=2);
}