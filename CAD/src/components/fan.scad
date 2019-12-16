include <../../parameters.scad>

module fan() {
    union() {
        intersection() {
            difference() {
                cylinder(d=fan_diameter, h=fan_thickness+0.1, $fn=100, center=true);
                cylinder(d=fan_center_diameter, h=fan_thickness+0.1, $fn=100, center=true);
            }

            for(i = [0:360/fan_blade_count:360]) {
                translate([0, 0, 0])
                    rotate([-fan_blade_angle, 0, i])
                        hull() {
                            translate([0, -fan_blade_center_size/2, -fan_blade_thickness/2])
                            cube([2, fan_blade_center_size, fan_blade_thickness]);

                            translate([fan_size/2, -fan_blade_outer_size/2, -fan_blade_thickness/2])
                                cube([2, fan_blade_outer_size, fan_blade_thickness]);
                        }
            }
        }

        difference() {
            minkowski() {
                cube([fan_size-fan_screw_distance*2, fan_size-fan_screw_distance*2, fan_thickness/2], center=true);
                cylinder(r=fan_screw_distance, h=fan_thickness/2, $fn=50, center=true);
            }

            difference() {
                cylinder(d=fan_diameter, h=fan_thickness+0.1, $fn=100, center=true);
                cylinder(d=fan_center_diameter, h=fan_thickness+0.1, $fn=100, center=true);
            }

            difference() {
                cylinder(d=fan_diameter*3, h=fan_thickness-fan_frame_thickness*2, center=true);
                cylinder(d=fan_size, h=fan_thickness-fan_frame_thickness, $fn=100, center=true);
            }

            translate([fan_size/2-fan_screw_distance, fan_size/2-fan_screw_distance, 0])
                cylinder(d=fan_screw_diameter, h=fan_thickness*2, center=true, $fn=20);

            translate([-fan_size/2+fan_screw_distance, fan_size/2-fan_screw_distance, 0])
                cylinder(d=fan_screw_diameter, h=fan_thickness*2, center=true, $fn=20);

            translate([fan_size/2-fan_screw_distance, -fan_size/2+fan_screw_distance, 0])
                cylinder(d=fan_screw_diameter, h=fan_thickness*2, center=true, $fn=20);

            translate([-fan_size/2+fan_screw_distance, -fan_size/2+fan_screw_distance, 0])
                cylinder(d=fan_screw_diameter, h=fan_thickness*2, center=true, $fn=20);
        }
    }
}

fan();