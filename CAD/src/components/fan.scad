include <../../parameters.scad>

center_side_distance = sqrt( pow(fan_size/2-fan_screw_distance, 2)+pow(fan_size/2-fan_screw_distance, 2) );

module fan() {
    union() {
        intersection() {
            difference() {
                cylinder(d=fan_diameter, h=fan_thickness+0.1, $fn=100, center=true);
                cylinder(d=fan_center_diameter, h=fan_thickness+0.1, $fn=100, center=true);
            }

            for(i = [0:360/fan_blade_count:360]) {
                rotate([0, 0, i])
                    translate([0, 0, -6])
                        rotate([fan_blade_angle, 0, 0])
                            difference() {
                                rotate([0, 0, 55])
                                    translate([fan_diameter/3, 0, 0])
                                        cylinder(r=50, h=fan_blade_thickness, $fn=200, center=true);

                                rotate([0, 0, 40+55])
                                    translate([fan_diameter/3, 0, 0])
                                        cylinder(r=45, h=fan_blade_thickness*2, $fn=200, center=true);
                            }
            }
        }

        difference() {
            union() {
                minkowski() {
                    cube([fan_size-fan_screw_distance*2, fan_size-fan_screw_distance*2, fan_thickness/2], center=true);
                    cylinder(r=fan_screw_distance, h=fan_thickness/2, $fn=50, center=true);
                }  
            }


            difference() {
                cylinder(d=fan_diameter, h=fan_thickness+0.1, $fn=200, center=true);
                cylinder(d=fan_center_diameter, h=fan_thickness+0.1, $fn=100, center=true);
            }

            difference() {
                difference() {
                    cylinder(d=fan_diameter*3, h=fan_thickness-fan_frame_thickness*2, center=true);
                    cylinder(d=fan_size, h=fan_thickness-fan_frame_thickness, $fn=300, center=true);
                }

                rotate([0, 0, 45])
                        cube([center_side_distance*2-fan_screw_diameter, fan_frame_thickness, fan_thickness], center=true);

                rotate([0, 0, 45+90])
                        cube([center_side_distance*2-fan_screw_diameter, fan_frame_thickness, fan_thickness], center=true);
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