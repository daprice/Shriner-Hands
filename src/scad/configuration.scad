/**
 * Configuration settings for the Shriners Hand, required to generate correct STLs of the printed parts. See the Configuration File Assembly instructions to set this up.
 * @id config_file
 * @name Configuration File
 * @category Prerequisites!
 * @using 1 hand_scan
 * @step Open configuration.scad in your favorite text editor.
 * @step Set the variables (more documentation coming soon!)
 * @step Render each part (F6) and export as STL, then print.
 */

hand_scan = "../../userScans/JudahLeftHandShortened.stl";

hand_pos = [-70,-88,20];
hand_rot = [0,-10,20];

palm_h = 40; //height of the area of the palm to be covered by the silicone

base_thickness = 3; //thickness of the rigid base oval
base_h = 26;
base_w = 35;

thumb_slot_w = 17;
thumb_slot_depth = 17;
