include <../../parameters.scad>

module pump() {
    difference() {
        union() {
            cylinder(d=pump_diameter, h=pump_height, $fn=100);

            hull() {
                translate([0, pump_in_out_distance/2, pump_in_out_height])
                    rotate([0, 90, 0])
                        cylinder(d=pump_in_out_diameter, h=pump_diameter/2+pump_in_out_overlap);
                translate([0, pump_in_out_distance/-2, pump_in_out_height])
                    rotate([0, 90, 0])
                        cylinder(d=pump_in_out_diameter, h=pump_diameter/2+pump_in_out_overlap);
            }
        }

        translate([0, pump_in_out_distance/2, pump_in_out_height])
            rotate([0, 90, 0])
                cylinder(d=pump_in_out_inner_diameter, h=pump_diameter/2+pump_in_out_overlap+0.1);

        translate([0, pump_in_out_distance/-2, pump_in_out_height])
            rotate([0, 90, 0])
                cylinder(d=pump_in_out_inner_diameter, h=pump_diameter/2+pump_in_out_overlap+0.1);
    }
}

pump();