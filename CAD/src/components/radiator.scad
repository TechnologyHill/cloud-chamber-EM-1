include <../../parameters.scad>



module radiator() {
    difference() {
        union() {
            cube([radiator_width, radiator_thickness, radiator_height]);
        }

        translate([radiator_fans_translate, -0.1, radiator_frame_thickness])
            cube([fan_size*3, radiator_frame_overhang+0.1, radiator_height-radiator_frame_thickness*2]);

        translate([radiator_fans_translate, radiator_thickness-radiator_frame_overhang, radiator_frame_thickness])
            cube([fan_size*3, radiator_frame_overhang+0.1, radiator_height-radiator_frame_thickness*2]);
    }
}

radiator();