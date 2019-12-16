include <../../parameters.scad>

module radiator() {
    difference() {
        union() {
            cube([radiator_width, radiator_thickness, radiator_height]);
        }

    }
}

radiator();