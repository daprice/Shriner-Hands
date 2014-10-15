/**
 * Configuration settings for the Shriners Hand, required to generate correct STLs of the printed parts. See the Configuration File Assembly instructions to set this up.
 * @id config_file
 * @name Configuration and Rendering of 3D models
 * @category Prerequisites!
 * @using 1 hand_scan
 * @step Open configuration.scad in your favorite text editor.
 * @step Set the variables (more documentation coming soon!)
 * @step Render each part (F6) and export as STL, then print.
 */

hand_scan = "../../userScans/JudahRightHandShortened.stl"; //location of STL of patient's hand scan

hand_d = 50; //diameter of the thickest part of the patient's hand in mm
hand_rot = [-30,10,115]; //rotation of hand scan about each axis so that the patient's finger(s) oppose the thumb post in preview.scad
hand_pos = [-90,-120,15]; //position of the hand in X,Y,Z axis so that the palm is centered on the Z axis and aligned with the thumb piece in preview.scad

palm_h = 50; //height of the area of the palm to be covered by the silicone

base_thickness = 3; //thickness of the rigid base oval
base_h = 26; //height of the rigid base oval
base_w = 35; //width of the rigid base oval

thumb_slot_w = 17; //width of the thumb mount slot; wider means the thumb can be adjusted further side-to-side
thumb_slot_depth = 17; //amount the thumb mount sticks out from the palm
thumb_angle = 5; //angle of the thumb from vertical towards the patient's palm/finger(s)

outer_scale = 1.3; //scale of outside surface of prosthesis relative to the patient's hand
inner_scale = 0.95; //scale of inside surface of prosthesis relative to the patient's hand (<1 results in a tighter fit by compensating for the stretchiness of the silicone)

wearing = true; //whether or not to show the prosthesis being worn by the patient in the preview. Does not affect final renders of parts.
