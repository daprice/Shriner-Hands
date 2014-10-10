/**
 * Shortened and resized portion of the patient's palm to be the center of the mold during silicone casting - rendered from src/scad/truncated_hand.scad (example shown)
 * @id truncated_hand
 * @name Truncated Print of Patient's Hand
 * @category Printed
 * @using 1 config_file
 */

include <configuration.scad>
use <misc.scad>

truncated_scan(scale=inner_scale);
