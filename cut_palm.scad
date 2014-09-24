/***********************
 * This script cuts a space for the prosthesis wearer's palm into the palm blank.
 * by Dale Price (daprice@mac.com)
 * for use with Nick Parker's "split hand" palm design
 ***********************/

// takes an STL of the wearer's palm/wrist (string), coordinates for positioning the palm space ([float, float, float], mm), and the amount of space to add for padding between the palm and prosthesis (float, mm)
module cut_palm(palm, pos=[0,0,0], pad=4) {
	palm_blank_stl = "palm_blank.stl"; //location of blank palm file
	palm_h = 49; //height of palm blank
	
	difference() {
		import(palm_blank_stl, convexity=10);
		translate(pos) {
			minkowski() {
				sphere(r=pad);
				import(palm, convexity=10);
			}
		}
	}
}