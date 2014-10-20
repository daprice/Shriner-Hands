//Hand preview, to assist with finding the best configuration values for the patient
// by Dale Price

include <configuration.scad>;
include <misc.scad>;
use <rigid_base.scad>;

if(wearing==true) color("tan") render() translate([0,-hand_d/2,0]) rotate([0,0,90]) hand_scan(scale=1);
render() translate([0,(-hand_d*outer_scale - hand_d*inner_scale)/4,0]) rotate([0,90-thumb_angle,-90]) rigid_base();
color([0.8, 0.8, 0.8, 0.5]) difference() {
	translate([0, -hand_d*outer_scale/2,0]) rotate([0,0,90]) smooth_scan(scale=outer_scale);
	translate([0,-hand_d*inner_scale/2,0]) rotate([0,0,90]) truncated_scan(scale=inner_scale);
}
