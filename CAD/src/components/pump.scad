include <../../parameters.scad>

use <fitting.scad>

module pump() {
    translate([pump_diameter/2+pump_in_out_overlap, pump_in_out_distance/2, pump_in_out_height])
            rotate([0, 90, 0])
                fitting();

        translate([pump_diameter/2+pump_in_out_overlap, pump_in_out_distance/-2, pump_in_out_height])
            rotate([0, 90, 0])
                fitting();

    difference() {
        union() {
            cylinder(d=pump_diameter, h=pump_height, $fn=100);

            rotate([0, 0, pump_cap_angle]) {
                translate([0, pump_cap_distance/2, pump_height])
                    cylinder(d=pump_cap_diameter, h=pump_cap_height, $fn=100);
                translate([0, pump_cap_distance/-2, pump_height])
                    cylinder(d=pump_cap_diameter, h=pump_cap_height, $fn=100);
            }

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
                cylinder(d=fitting_thread_diameter, h=pump_diameter/2+pump_in_out_overlap+0.1);

        translate([0, pump_in_out_distance/-2, pump_in_out_height])
            rotate([0, 90, 0])
                cylinder(d=fitting_thread_diameter, h=pump_diameter/2+pump_in_out_overlap+0.1);

        rotate([0, 0, pump_cap_angle]) {
            translate([0, pump_cap_distance/2, pump_height+pump_cap_height-pump_cap_inbus_height])
                cylinder(d=pump_cap_inbus_diameter, h=pump_cap_inbus_height*2, $fn=6);
            translate([0, pump_cap_distance/-2, pump_height+pump_cap_height-pump_cap_inbus_height])
                cylinder(d=pump_cap_inbus_diameter, h=pump_cap_inbus_height*2, $fn=6);
        }

        translate([0, 0, pump_height-pump_tank_top_distance-pump_tank_height]) {
            difference() {
                cylinder(d=pump_diameter*2, h=pump_tank_furrow_height);
                cylinder(d=pump_diameter-pump_tank_furrow_deepth*2, h=pump_tank_furrow_height, $fn=100);
            }
            translate([0, 0, pump_tank_height-pump_tank_furrow_height])
            difference() {
                cylinder(d=pump_diameter*2, h=pump_tank_furrow_height);
                cylinder(d=pump_diameter-pump_tank_furrow_deepth*2, h=pump_tank_furrow_height, $fn=100);
            }
        }
    }
}

pump();