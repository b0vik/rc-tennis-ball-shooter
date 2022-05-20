motor_height=81.5;
motor_diameter=101;
hole_distance_w=95;
hole_distance_h=42;
drill_hole_diameter=1.3;
hole_distance = 50;
cylinder_height=40;

include <nutsnbolts/cyl_head_bolt.scad>;
include <nutsnbolts/materials.scad>;


my1016();

module my1016() {
    rotate([0,90,0]) translate([-motor_diameter/2 - 10,0,0]) {
        //cylinder(d=motor_diameter, h=motor_height, center=true);
        translate([0,0,-10] ) {
            difference() {
            cylinder(d=30, h=30, center=true);
            translate([0,0,-5]) nutcatch_parallel("M12");
            }
        }

            translate([0,0,10]) cylinder(h=cylinder_height,d=60,center=true);
           

    }
    *rotate([0,0,90]) for (x = [-hole_distance_w/2,hole_distance_w/2]) {
        for (y = [-hole_distance_h/2,hole_distance_h/2]) {
            translate([x,y,-hole_distance/2]) cylinder(h=hole_distance,d=drill_hole_diameter);
        }
    }
}