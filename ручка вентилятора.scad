// Шестерня
use <libs/gear.scad>;

color("Orange")
mirror([0,1,0])
difference() {
    union() {
        linear_extrude(3, convexity=10, slices=0)
        gear_polygon(Da=32.3, Z=39, Zdraw=9, $fn=25);

        hull() {
            cylinder(h=6, d=7.5, $fn=30);

            translate([-42,0,0])
            cylinder(h=6, d=7.5, $fn=30);
        }
        
        echo((41.6-30)/2)
        circle(r = (41.6-30)/2);
    }
    translate([0,0,-1])
    cylinder(h=8, d=5, $fn=50);
}
