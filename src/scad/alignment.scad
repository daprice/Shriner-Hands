//Assists in positioning the hand scan to align the prosthesis with the patient's hand.
// by Dale Price

include <configuration.scad>;
use <misc.scad>;

color("lightgray") translate([0, -hand_d/2, 0]) rotate([0,0,90]) hand_scan();

//visual aids for alignment
color("green") rotate([0,90,0]) cylinder(h=hand_d*2, d=2, center=true);
color("green") rotate([90,0,0]) cylinder(h=hand_d*2, d=2, center=true);
color("green") translate([0,-hand_d,0]) rotate([90,0,0]) cylinder(d1=5,d2=1,h=10,center=true);
color([0,0,1,0.4]) translate([0,(-hand_d*inner_scale - hand_d*outer_scale)/4, 0]) cube([palm_h,6,palm_h], center=true);
