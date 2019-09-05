include <../parameters.scad>
use <lib/L_profile.scad>

wall_thickness = 2;

module 2001_Pbk() {
    difference() {
        translate([0, 0, L_2015_height/2])
            cube([L_2015_width*2+water_block_width+wall_thickness*2, L_2015_height+wall_thickness*2, L_2015_height], center=true);

        translate([water_block_width/2, -L_2015_height/2, wall_thickness]) {
            L_profile(width=L_2015_width, height=L_2015_height, thickness=L_2015_thickness);
        }

        mirror([1, 0, 0]) {
            translate([water_block_width/2, -L_2015_height/2, wall_thickness]) {
                L_profile(width=L_2015_width, height=L_2015_height, thickness=L_2015_thickness);
            }
        }
    }
}

2001_Pbk();