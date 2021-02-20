// Шестерня
use <libs/gear.scad>;

color("Orange")
translate([0,0,4])
mirror([0,0,1])
difference() {
    union() {
        mirror([0,1,0])
        linear_extrude(3, convexity=10, slices=0)
        gear_polygon(Da=32.3, Z=39, Zdraw=9, $fn=25);

        rotate([0,0,-2.46])
        minkowski() {
            hull() {
                translate([0,-1.5,0])
                cylinder(h=4, d=8.5, center=true, $fs=0.5, $fa=1);

                translate([-35.8,0,0])
                cylinder(h=4, d=14.6, center=true, $fs=0.5, $fa=1);
            }
            sphere(1, $fs=0.3);
        }
        
        minkowski() {
            union() {
                difference() {
                    cylinder(h=6, r=44.1, center=true, $fs=1, $fa=1);

                    cylinder(h=8, r=27.5, center=true, $fs=1, $fa=1);

                    rotate([0,0,-76])
                    translate([23,0,0])
                    cube([46,90,8], center=true);

                    translate([0,2.9,0])
                    rotate([0,0,80.262])
                    translate([23,0,0])
                    cube([46,90,8], center=true);
                }

                rotate([0,0,14])
                translate([-35.8,0,0])
                cylinder(h=6, d=16.6, center=true, $fs=0.5, $fa=1);
            }
            sphere(1, $fs=0.3);
        }
    }

    cylinder(h=8, d=5, $fn=50, center=true);
}
