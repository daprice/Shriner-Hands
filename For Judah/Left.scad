/***********************
 * This script cuts a space for the prosthesis wearer's palm into the palm blank.
 * by Dale Price (daprice@mac.com)
 * for use with Nick Parker's "split hand" palm design
 ***********************/

palm_stl = "JudahLeftHandShortened.stl"; //location of scan of wearer's hand (should be manifold STL)
palm_blank_stl = "../palm_blank_try2.stl"; //location of blank palm file
palm_blank_h = 49; //height of the blank palm piece
pos = [-90.5,-85,42]; //X, Y, Z coordinates for positioning the palm space in the prosthesis
rot = [0,0,0]; //rotation of palm about each axis
scale = 1.10; //scale of palm to leave about 4mm extra

//**********************

difference() {
	//The palm prosthesis
	color("DodgerBlue") import(palm_blank_stl, convexity=10);
	//make a cutout using the scan of the wearer's hand
	rotate(rot) scale([scale+0.1,scale,(scale+1)/2]) translate(pos) {
		#import(palm_stl, convexity=10);
	}
	//clean up the cutout using a cone
	translate([0,0,palm_blank_h/2]) scale([1,1,1])
		cylinder(h=palm_blank_h+1, d1=45, d2=25, center=true);
}
