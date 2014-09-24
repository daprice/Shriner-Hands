/***********************
 * This script cuts a space for the prosthesis wearer's palm into the palm blank.
 * by Dale Price (daprice@mac.com)
 * for use with Nick Parker's "split hand" palm design
 ***********************/

palm_stl = "For Judah/JudahLeftHandShortened.stl"; //location of scan of wearer's hand (should be manifold STL)
palm_blank_stl = "palm_blank.stl"; //location of blank palm file
pos = [0,0,0]; //X, Y, Z coordinates for positioning the palm space in the prosthesis
rot = [0,0,0]; //rotation of palm about each axis
scale = 1.10; //scale of palm to leave about 4mm extra

//**********************

difference() {
	import(palm_blank_stl, convexity=10);
	translate(pos) rotate(rot) {
		import(palm_stl, convexity=10);
	}
}
