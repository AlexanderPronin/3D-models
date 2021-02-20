use <libs/gear.scad>;

state = 2 ; // [0:2]

/* [Hidden] */

pos = [
    [
        [[0,0,3.1], [0,0,0]],
        [[18.9,-1.5,1.5], [0,0,6]],
        [[13,14.5,2.5], [0,0,8]],
        [[1.6,13,0.3], [0,0,20]]
    ],
    [
        [[0,0,0], [0,0,0]],
        [[0,12.75,-1.9], [0,0,18]],
        [[0,24.67,1],[180,0,20.65]],
        [[0,35.51,-2.2],[0,0,19.85]]
    ],
    [
        [[0,0,3.1], [0,0,0]],
        [[13,-2,1.5], [0,0,8]],
        [[17,9.5,5.8], [0,180,6]],
        [[5.4,11.7,0.3], [0,0,-2]]
    ],
];

color("Orange")
translate(pos[state][0][0])
rotate(pos[state][0][1])
union() {
    linear_extrude(5, convexity=10, slices=0)
    gear_polygon(Da=9.4, Z=10, $fn=25);

    linear_extrude(2)
    gear_polygon(Da=21.6, Z=42, $fn=25);

    translate([0,0,-0.3])
    cylinder(h=1, d=3, $fn=60);
    
    translate([0,0,-3.1])
    cylinder(h=9.6, d=2, $fn=40);
}

color("Red")
translate(pos[state][1][0])
rotate(pos[state][1][1])
union() {
    linear_extrude(4.7, convexity=10, slices=0)
    gear_polygon(Da=5.8, Z=10, $fn=25);
    
    linear_extrude(1.3, convexity=10, slices=0)
    gear_polygon(Da=17.8, Z=34, $fn=25);
    
    translate([0,0,-0.3])
    cylinder(h=1, d=3, $fn=60);
    
    translate([0,0,-1.5])
    cylinder(h=8, d=1.8, $fn=40);
}

color("Green")
translate(pos[state][2][0])
rotate(pos[state][2][1])
union() {
    linear_extrude(3.2, convexity=10, slices=0)
    gear_polygon(Da=8, Z=14, $fn=25);
    
    linear_extrude(1.3, convexity=10, slices=0)
    gear_polygon(Da=17.8, Z=34, $fn=25);
    
    translate([0,0,-0.3])
    cylinder(h=3.8, d=3, $fn=60);
    
    translate([0,0,-2.5])
    cylinder(h=8.3, d=1.8, $fn=40);
}


color("Blue")
translate(pos[state][3][0])
rotate(pos[state][3][1])
difference() {
    union() {
        linear_extrude(5, convexity=10, slices=0)
        gear_polygon(Da=5.8, Z=10, $fn=25);

        translate([0,0,-0.3])
        cylinder(h=5.6, d=3, $fn=40);
    }

    translate([0,0,-0.5])
    cylinder(h=6, d=1.8, $fn=40);
}
