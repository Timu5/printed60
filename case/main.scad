
$fn = 32;
grid = 0.05 * 25.4;
space = 3/4 * 25.4;

test_offset = space - 14;
edge = test_offset;
tolerance = 0.2; // maybe 0.1 for bigger elements

include <hole.scad>
include <top.scad>
include <middle.scad>
include <bottom.scad>

layout = [
    [1,1,1,1,1,1,1,1,1,1,1,1,1,2],
    [1.5,1,1,1,1,1,1,1,1,1,1,1,1, 1.5],
    [1.75,1,1,1,1,1,1,1,1,1,1,1, 2.25],
    [2.25,1,1,1,1,1,1,1,1,1,1,2.75],
    [1.25,1.25,1.25,6.25,1.25,1.25,1.25,1.25],
];

offset = [
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14],
    [1,2.5,3.5,4.5,5.5,6.5,7.5,8.5,9.5,10.5,11.5,12.5,13.5,14.5],
    [1,2.75,3.75,4.75,5.75,6.75,7.75,8.75,9.75,10.75,11.75,12.75,13.75],
    [1,3.25,4.25,5.25,6.25,7.25,8.25,9.25,10.25,11.25,12.25,13.25],
    [1,2.25,3.5,4.75,11,12.25,13.5,14.75],
];

holes = [
    [-0.5, 0.5],
    [14.5, 0.5],
    [-0.5, -4.5],
    [14.5, -4.5],

    [1.5, 0.25],
    [12.5, 0.25],
    [5.5, 0.25],
    [8.5, 0.25],

    [1.5 - 0.5, -0.75],
    [12.5 + 0.5, -0.75],
    [5.5 - 0.5, -0.75],
    [8.5 + 0.5, -0.75],
    
    [1.5 - 0.25, -1.75],
    [12.5 - 0.25, -1.75],
    [5.5 - 0.25 - 1, -1.75],
    [8.5 + 0.5 + 0.25, -1.75],

    [1.5 + 0.25, -2.75],
    [12.5 - 1 + 0.25, -2.75],
    [5.5 + 0.25, -2.75],
    [8.5 - 0.75, -2.75],

    [0.75, -3.75],
    [12.5 + 0.5 + 0.25, -3.75],
    [5, -3.75],
    [7.5, -3.75],
];


color([0.45,0.45,0.45])
    top_layer(15, 5, layout, offset, holes);

color([0.4,0.3,0.3])
    middle_layer(15, 5, layout, offset, holes);

color([0.25,0.25,0.25])
   border(15, 5, 2, 20);
