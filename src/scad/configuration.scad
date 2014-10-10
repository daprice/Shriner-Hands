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

hand_scan = "../../userScans/JudahLeftHandShortened.stl";

hand_d = 50; //diameter of the thickest part of the patient's hand in mm
hand_pos = [-70,-88,17];
hand_rot = [0,-15,15];

palm_h = 50; //height of the area of the palm to be covered by the silicone

base_thickness = 3; //thickness of the rigid base oval
base_h = 26;
base_w = 35;

thumb_slot_w = 17;
thumb_slot_depth = 17;

outer_scale = 1.3; //scale of outside surface of prosthesis relative to the patient's hand
inner_scale = 0.95; //scale of inside surface of prosthesis relative to the patient's hand (<1 results in a tighter fit by compensating for the stretchiness of the silicone)
