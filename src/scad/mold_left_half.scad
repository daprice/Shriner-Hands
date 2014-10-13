/**
 * Left half of 3D printed mold for casting the silicone sleeve - rendered from src/scad/mold_left_half.scad
 * @id mold_left_half
 * @name Mold - left half
 * @category Printed
 * @using 1 config_file
 */

/**
 * Assembled mold for casting the silicone sleeve
 * @id mold_assembly
 * @name Palm Sleeve Mold Assembly
 * @assembled
 * @using 1 mold_left_half
 * @using 1 mold_right_half
 * @using 1 rigid_base
 * @using 4 m4_nut
 * @using 4 m4x15_bolt
 * @using 4 tape
 * @step Set one half of the mold on a flat surface with the flat side down.
 * @step Insert the rigid thumb base into the slot in the side of the mold, with the round part toward the inside and the shorter prong toward the closed end of the mold. [[palm_mold/moldhalf.jpg]]
 * @step Set the other half of the mold with the flat side up so the two halves align.
 * @step Fasten the two halves together using the nuts and bolts in the holes at each corner. [[palm_mold/assembled.jpg]]
 * @step Optional: use tape to seal the seams on the outside of the mold to prevent leakage. [[palm_mold/taped.jpg]]
 */

//by Dale Price
// with input from Gloria Gogola, James Northcutt, Kim Le, Jordan Miller, and others

include <MCAD/nuts_and_bolts.scad>;
include <configuration.scad>;
use <misc.scad>;
use <rigid_base.scad>;

rotate([90,0,0]) mold_half(0);

module mold_half(side=0)
{
	xy_margin = 15;
	z_margin = 5;

	side_y = hand_d*outer_scale/2+xy_margin;
	side_z = hand_d*outer_scale + z_margin*2;
	z = -hand_d/2 - z_margin/2 + base_thickness - 2.5;

	translate([0,-side_y + side*side_y,z]) difference() {
		//mold block:
		union() {
			//the block itself:
			translate([-xy_margin,side*hand_d*outer_scale/2 + side*xy_margin,-hand_d*outer_scale/2 - z_margin]) cube([palm_h + xy_margin, side_y, hand_d*outer_scale+z_margin*2]);
			//screw holes:
			difference() {
				translate([-xy_margin,side_y - 5 + side*5, -side_z/2 - 10]) cube([10,5,side_z+20]);
				translate([-xy_margin+5,side_y - 5, side_z/2+5]) rotate([-90,0,0]) {
					boltHole(size=4, units=MM, length=10, tolerance = +0.0001, proj = -1);
				}
				translate([-xy_margin+5,side_y - 5, -side_z/2-5]) rotate([-90,0,0]) {
					boltHole(size=4, units=MM, length=10, tolerance = +0.0001, proj = -1);
				}
			}
			difference() {
				translate([palm_h-10,side_y - 5 + side*5, -side_z/2 - 10]) cube([10,5,side_z+20]);
				translate([palm_h-5,side_y - 5, side_z/2+5]) rotate([-90,0,0]) {
					boltHole(size=4, units=MM, length=10, tolerance = +0.0001, proj = -1);
				}
				translate([palm_h-5,side_y - 5, -side_z/2-5]) rotate([-90,0,0]) {
					boltHole(size=4, units=MM, length=10, tolerance = +0.0001, proj = -1);
				}
			}
		}
		
		//hand scan to subtract
		translate([palm_h/2+0.01,side_y,hand_d*outer_scale/2]) rotate([0,90,180]) truncated_scan(scale=outer_scale);

		//spot for rigid thumb base to go during casting
		translate([palm_h/2,side_y,-z]) rotate([0,-15,0]) rigid_base(simplified=true);

		//slot to pry the two halves apart after casting:
		translate([xy_margin, side_y, -side_z/2]) cube([10,3,10], center=true);
	}
}
