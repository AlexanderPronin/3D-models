$fn=60;

difference() {
    union() {
        cylinder(h=104, d=15);
        cylinder(h=12.5, d=27);
        translate([0,0,12.5]) cylinder(h=7.5, d1=27, d2=15.5);
        translate([0,0,20]) cylinder(h=1, d1=15.5, d2=17.5);
        translate([0,0,21]) cylinder(h=9.5, d=17.5);
        translate([0,0,53.5]) cylinder(h=3, d=16);

        translate([0,0,7.5]) rotate([0,90,0]) difference() {
            cylinder(h=18.5, d=9);
            translate([3,0,19.5]) rotate([0,-45,0]) cube([5,10,10], center=true);
        }
        translate([0,0,7.5]) rotate([0,-90,0]) cylinder(h=18.5, d=10);
        translate([0,0,7.5]) minkowski() {
            cube([24,14,1], center=true);
            cylinder(h=0.5,r=3, center=true);
        }

        translate([0,0,66.5]) difference() {
            cylinder(h=6, d=24.5, center=true);
            cylinder(h=2, d=25, center=true);
            rotate([0,0,30]) translate([7,7,0]) cube([14,14,8], center=true);
            rotate([0,0,30]) translate([-7,-7,0]) cube([14,14,8], center=true);
            rotate([0,0,-30]) translate([-7,7,0]) cube([14,14,8], center=true);
            rotate([0,0,-30]) translate([7,-7,0]) cube([14,14,8], center=true);
        }
        translate([0,0,66.5]) rotate([90,0,0]) cube([24.3,6,2], center=true);

        translate([0,0,66.5]) difference() {
            cylinder(h=6, d=24.5, center=true);
            cylinder(h=2, d=25, center=true);
            rotate([0,0,30]) translate([7,7,0]) cube([14,14,8], center=true);
            rotate([0,0,30]) translate([-7,-7,0]) cube([14,14,8], center=true);
            rotate([0,0,-30]) translate([-7,7,0]) cube([14,14,8], center=true);
            rotate([0,0,-30]) translate([7,-7,0]) cube([14,14,8], center=true);
        }

        translate([0,0,71]) difference() {
            union() {
                difference() {
                    cylinder(h=8, d1=24, d2=23 );
                    translate([3,0,2]) cube([5,25,7]);
                    translate([-8,0,2]) cube([5,25,7]);
                }
                difference() {
                    cylinder(h=6, d=33);
                    rotate([0,0,30]) translate([-17,0,-1]) cube([34,17,8]);
                    rotate([0,0,-30]) translate([-17,-17,-1]) cube([34,17,8]);
                }
            }
            translate([0,0,2]) cylinder(h=8.1, d=20);
        }
    }
    translate([0,0,-1]) cylinder(h=100, d=9);
    translate([0,0,-1]) cylinder(h=12.5, d=22.5);
    translate([0,0,11.49]) cylinder(h=7.5, d1=22.5, d2=9);
    translate([0,0,101]) cylinder(h=4, d=7.5);
    translate([0,0,100]) difference() {
        cylinder(h=4, d=5, center=true);
        translate([3,0,0]) cube([5,5,6], center=true);
    }
    translate([0,0,7.5]) rotate([0,-90,0]) difference() {
        cylinder(h=18.6, d=5);
        translate([-5,1,0]) cube([10,5,14.5]);
    }
    translate([-8,-2.25,85.5]) cube([4.1,4.5,21]);
    translate([0,0,85.5]) rotate([0,-90,0]) cylinder(h=8,d=4.5);
    rotate([0,0,75]) translate([-10,9,70]) cube([25,8,10]);
    
    translate([0,0,12.5]) rotate([-90,0,0]) hull() {
        cylinder(h=14, d=6);
        translate([0,-10,0]) cylinder(h=14, d=6);
    }
}
