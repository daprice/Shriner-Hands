/**
 * 3D printed rigid base for the static thumb post - rendered from src/scad/rigid_base.scad
 * @id rigid_base
 * @name Rigid base
 * @category Printed
 * @using 1 config_file
 */

//by Dale Price
// with input from Gloria Gogola, James Northcutt, Kim Le, Jordan Miller, and others

include <configuration.scad>;
use <misc.scad>;

rotate([90,0,0]) rigid_base();

module rigid_base(simplified=false) {
	//generate round base to hold thumb in silicone sleeve:
	difference() {
		union() {
			intersection() {
				resize([base_h,base_w,base_thickness*5]) cylinder(d=base_h,h=base_thickness*5,center=true);
				translate([0,0,base_thickness]) rotate([0,85,180]) smooth_scan(scale=1.1);
			}
			//mounting slot for thumb post:
			thumb_slot(simplified);
		}
		rotate([0,85,180]) hand_scan(scale=1.1);
	}
}

module thumb_slot(simplified=false)
{
	thumb_a_circle_d = 5; //diameter of slot circle
	thumb_a_slot_w = 2; //width of rectangular part of slot
	thumb_a_depth_to_c = 4.56; //distance between the far surface of the attachment to the center of the circle
	thumb_a_depth_diff = 1.5; //proximal "prong" height - distal "prong" height

	difference() {
		//the basic shape of the thumb mount:
		hull() {
			cube([18,thumb_slot_w+1,0.00001], center=true);
			translate([0,0,base_thickness + thumb_slot_depth]) cube([9, thumb_slot_w, 0.0000001], center=true);
		}
		//cut out the slot for the thumb to attach to:
		/*if (!simplified) union() {
			translate([0,14,base_thickness+thumb_slot_depth-5]) scale([1.06,2,1.06]) rotate([0,90,-90]) import("../inventor/rigid connector.stl", convexity=10);
			translate([-6,-14, base_thickness+thumb_slot_depth-1.6]) cube([5,28,5]);
		}*/
		if(!simplified) translate([0,0,base_thickness+thumb_slot_depth]) {
			translate([-10, -thumb_slot_w, -thumb_a_depth_diff]) cube([10,thumb_slot_w*2,thumb_a_depth_diff+1]);
			translate([-thumb_a_slot_w/2, -thumb_slot_w, -thumb_a_depth_to_c]) cube([thumb_a_slot_w,thumb_slot_w*2,thumb_a_depth_to_c+1]);
			translate([0,-thumb_slot_w,-thumb_a_depth_to_c]) rotate([0,90,90]) cylinder(d=thumb_a_circle_d, h=thumb_slot_w*2, centered=true,$fn=40);
		}
		//cut out a slot for a velcro strap to attach:
		if(!simplified) translate([0,0,thumb_slot_depth - 8]) cube([9,28,2.5], center=true);
	}
}
