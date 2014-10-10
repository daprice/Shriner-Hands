//miscellaneous functions to help with generating prostheses
// by Dale Price

include <configuration.scad>;

module hand_scan(scale=1) //places the wearer's hand scan with selected position from configuration.scad
{
	rotate(hand_rot) scale(scale) translate(hand_pos) import(hand_scan, convexity=10);
}

module truncated_scan(scale=1) //places the relevant section of the wearer's hand
{
	intersection() {
		cube([500,500,palm_h], center=true);
		hand_scan(scale=scale);
	}
}


module smooth_scan(scale=1) //places a smoothed out version of the wearer's palm using hull()
{
	hull() {
		truncated_scan(scale=scale);	
	}
}
