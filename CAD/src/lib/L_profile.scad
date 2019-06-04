include <../../parameters.scad>

module L_2015_profile(width, height, thickness=2, size=100) {
    difference() {
        cube([width, height, size]);

        translate([thickness, thickness, -0.1])
            cube([width, height, size+0.2]);
    }
}

L_2015_profile(15, 20);