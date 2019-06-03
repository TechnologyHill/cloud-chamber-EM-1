include <../../parameters.scad>

module L_2015_profile(height=100) {
    difference() {
        cube([L_2015_width, L_2015_height, height]);

        translate([L_2015_thickness, L_2015_thickness, -0.1])
            cube([L_2015_width, L_2015_height, height+0.2]);
    }
}

L_2015_profile(150);