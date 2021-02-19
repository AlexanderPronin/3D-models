// Шестерня

use <libs/gear.scad>;

color("Orange")
translate([0,0,0])
union() {
    linear_extrude(5)
    gear_polygon(Da=9.4, Z=10, $fn=25);

    linear_extrude(2)
    gear_polygon(Da=21.6, Z=42, $fn=25);

    translate([0,0,-0.3])
    cylinder(h=1, d=3, $fn=60);
    
    translate([0,0,-3.1])
    cylinder(h=9.6, d=2, $fn=40);
}

color("Red")
translate([0,12.75,-1.9])
rotate([0,0,18])
union() {
    linear_extrude(4.7)
    gear_polygon(Da=5.8, Z=10, $fn=25);
    
    linear_extrude(1.3)
    gear_polygon(Da=17.8, Z=34, $fn=25);
    
    translate([0,0,-0.3])
    cylinder(h=1, d=3, $fn=60);
    
    translate([0,0,-1.5])
    cylinder(h=8, d=1.8, $fn=40);
}

color("Green")
translate([0,24.67,1])
rotate([180,0,20.65])
union() {
    linear_extrude(3.2)
    gear_polygon(Da=8, Z=14, $fn=25);
    
    linear_extrude(1.3)
    gear_polygon(Da=17.8, Z=34, $fn=25);
    
    translate([0,0,-0.3])
    cylinder(h=3.8, d=3, $fn=60);
    
    translate([0,0,-2.5])
    cylinder(h=8.3, d=1.8, $fn=40);
}


color("Blue")
translate([0,35.51,-2.2])
rotate([0,0,19.85])
difference() {
    union() {
        linear_extrude(5)
        gear_polygon(Da=5.8, Z=10, $fn=25);

        translate([0,0,-0.3])
        cylinder(h=5.6, d=3, $fn=40);
    }

    translate([0,0,-0.5])
    cylinder(h=6, d=1.8, $fn=40);
}
