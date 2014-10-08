/**
 * 3D printed rigid base for the static thumb post
 * @id rigid_base
 * @name Rigid base
 * @category Printed
 * @type Printed
 */

//by Dale Price
// with input from Gloria Gogola, James Northcutt, Kim Le, and Jordan Miller

rigid_base();

module rigid_base() {
	include <configuration.scad>;
	include <misc.scad>;

	//generate round base to hold thumb in silicone sleeve
	difference() {
		intersection() {
			resize([base_h,base_w,base_thickness*5]) cylinder(d=base_h,h=base_thickness*5,center=true);
			translate([0,0,base_thickness]) rotate([0,80,180]) smooth_scan(scale=1.1);
		}
		rotate([0,80,180]) hand_scan(scale=1.1);
	}
}
