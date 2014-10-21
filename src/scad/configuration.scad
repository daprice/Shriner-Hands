// Hand alignment parameters:

hand_scan = "../../userScans/JudahLeftHandShortened.stl"; //location of STL of patient's hand scan

hand_d = 50; //diameter of the thickest part of the patient's hand in mm
hand_pos = [-47,-105,0]; //position of the hand in X,Y,Z axis so that the palm is centered on the Z axis and aligned with the thumb piece in preview.scad
hand_rot = [0,-15,15]; //rotation of hand scan about each axis so that the patient's finger(s) oppose the thumb post in preview.scad

palm_h = 50; //height of the area of the palm to be covered by the silicone

//=============================

// Design parameters:

base_thickness = 3; //thickness of the rigid base oval
base_h = 26; //height of the rigid base oval
base_w = 35; //width of the rigid base oval

thumb_depth = 17; //amount the thumb mount sticks out from the palm
thumb_angle = 5; //angle of the thumb from vertical towards the patient's palm/finger(s)
thumb_length = "short"; //"long" (60mm) or "short" (40mm)
thumb_grip = true; //whether the thumb should allow for casting a grippy pad or not

outer_scale = 1.3; //scale of outside surface of prosthesis relative to the patient's hand
inner_scale = 0.95; //scale of inside surface of prosthesis relative to the patient's hand (<1 results in a tighter fit by compensating for the stretchiness of the silicone)

wearing = true; //whether or not to show the prosthesis being worn by the patient in the preview. Does not affect final renders of parts.


/**
 * Configuration settings for the Shriners Hand, required to generate correct STLs of the printed parts. See the Configuration File Assembly instructions to set this up.
 * @id config_file
 * @name Configuration and Rendering of 3D models
 * @using 1 hand_scan
 * @step Place a manifold, cleaned-up version of the patient's hand scan in the userScans folder.
 * @step Open src/scad/configuration.scad in your favorite text editor.
 * @step Type the filename of the patient's hand scan in place of "JudahLeftHandShortened.stl" in the configuration file.
 * @step Open alignment.scad using OpenSCAD so you can see the placement of the 3D model while you edit the configuration file. (you may have to manually press the Reload and Preview button every time you make a change to the configuration file)
 * @step Change the hand_d parameter to the diameter of the thickest part of the patient's hand in mm.
 * @step Adjust the hand_pos (position of the hand in 3D space) and hand_rot (rotation of hand around each axis) parameters so that the 3D scan of the hand is aligned with the arrows as described in the following steps.
 * @step The palm of the hand should be roughly vertical, centered on the green crosshair as much as possible, and the hand should be oriented so that the patient's finger(s) flex toward the green arrow. [[configuration/positioning.png]]
 * @step The palmar surface should be just within the blue area when viewed from the side. [[configuration/forward_alignment.png]]
 * @step (Optional) Adjust the other parameters in the configuration file to control the dimensions of various parts of the prosthesis. The default values should work most of the time.
 * @step After you have aligned the hand, open src/scad/preview.scad in OpenSCAD to ensure that all parts of the prosthesis look correct. [[configuration/assembly_preview.png]]
 * @step Open each part to be printed (from the src/scad folder) in OpenSCAD, render each one (F6) and export as STL, then print using the STL files.
 */
