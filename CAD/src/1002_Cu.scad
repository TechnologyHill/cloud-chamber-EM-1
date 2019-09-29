include <../parameters.scad>

module 1002_Cu() {

    module TO92() {
        translate([0, 0, TO92_thickness/2-0.1])
            cube([TO92_width, TO92_height, TO92_thickness+0.1], center=true);

        translate([0, (TO92_pins-5)/-2-TO92_height/2+0.1, (TO92_thickness-TO92_bottom_to_pins)/2-0.1+0.25])
            cube([TO92_width, TO92_pins-5, TO92_thickness-TO92_bottom_to_pins+0.1+0.5], center=true);
    }

    difference() {
        translate([0, 0, cooper_block_thickness/2]) {
            cube([cooper_block_x, cooper_block_y, cooper_block_thickness], center=true);
        }

        TO92();

        translate([-cooper_block_x/2+8, -cooper_block_y/2+8, 0])
            rotate([0, 0, 90])
                TO92();   
    }
}

1002_Cu();