/**
 * Right half of 3D printed mold for casting the silicone sleeve - rendered from src/scad/mold_right.scad
 * @id mold_right_half
 * @name Mold - right half
 * @category Printed
 * @using 1 config_file
 */

//by Dale Price
// with input from Gloria Gogola, James Northcutt, Kim Le, Jordan Miller, and others

use <mold_left_half.scad>

rotate([-90,0,0]) mold_half(1);
