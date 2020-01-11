include <../parameters.scad>

bottom_thickness = 1001_P_bk_bottom_thickness;
border_thickness = 2;
border_height = water_block_thickness+peltier_thickness*2+2;
border_corner_size = 10;
copper_plate_support = 2;
water_block_tolerance = 0.5;

module 1001_P_bk(peltiers=false) {
    if(peltiers==true) {
        translate([0, 0, bottom_thickness+water_block_thickness/2])
            #cube([water_block_length, water_block_width, water_block_thickness], center=true);

        translate([-water_block_length/2+peltier_size_x/2, 0, bottom_thickness+water_block_thickness+peltier_thickness])
            #cube([peltier_size_x, peltier_size_y, peltier_thickness*2], center=true);

        translate([water_block_length/2-peltier_size_x/2, 0, bottom_thickness+water_block_thickness+peltier_thickness])
            #cube([peltier_size_x, peltier_size_y, peltier_thickness*2], center=true);
    }

    translate([observation_surface_x/2-copper_plate_support, observation_surface_y/2-copper_plate_support, bottom_thickness])
        cube([copper_plate_support, copper_plate_support, water_block_thickness+peltier_thickness*2]);

    translate([observation_surface_x/2-copper_plate_support, -observation_surface_y/2, bottom_thickness])
        cube([copper_plate_support, copper_plate_support, water_block_thickness+peltier_thickness*2]);

    translate([-observation_surface_x/2, observation_surface_y/2-copper_plate_support, bottom_thickness])
        cube([copper_plate_support, copper_plate_support, water_block_thickness+peltier_thickness*2]);

    translate([-observation_surface_x/2, -observation_surface_y/2, bottom_thickness])
        cube([copper_plate_support, copper_plate_support, water_block_thickness+peltier_thickness*2]);

    difference() {
        translate([0, 0, bottom_thickness+(water_block_thickness+peltier_thickness*1.5)/2]) {
            cube([water_block_length+border_thickness*2+water_block_tolerance, water_block_width+border_thickness*2+water_block_tolerance, water_block_thickness+peltier_thickness*1.5], center=true);
        }

        translate([water_block_length/2, -water_block_width, 0])
            cube([100, water_block_width*2, 100]);

        translate([0, 0 ,bottom_thickness+50])
            cube([water_block_length+water_block_tolerance, water_block_width+water_block_tolerance, 100], center=true);

        translate([-water_block_length/2, -water_block_width/2-water_block_tolerance/2-border_thickness-0.1, bottom_thickness+water_block_thickness])
            cube([peltier_cable_diameter, border_thickness*2, 20]);

        translate([-water_block_length/2+peltier_size_x-peltier_cable_diameter, -water_block_width/2-water_block_tolerance/2-border_thickness-0.1, bottom_thickness+water_block_thickness])
            cube([peltier_cable_diameter, border_thickness*2, 20]);

        translate([water_block_length/2-peltier_size_x, -water_block_width/2-water_block_tolerance/2-border_thickness-0.1, bottom_thickness+water_block_thickness])
            cube([peltier_cable_diameter, border_thickness*2, 20]);

        translate([water_block_length/2-peltier_cable_diameter, -water_block_width/2-water_block_tolerance/2-border_thickness-0.1, bottom_thickness+water_block_thickness])
            cube([peltier_cable_diameter, border_thickness*2, 20]);

        translate([0, 0, 50+bottom_thickness+water_block_thickness])
            cube([water_block_length/3+0.1, water_block_width*2, 100], center=true);
    }

    difference() {
        union() {
            translate([0, 0, (bottom_thickness+border_height)/2])
                cube([observation_surface_x+border_thickness*2, observation_surface_y+border_thickness*2, bottom_thickness+border_height], center=true);

            
        }

        translate([0, 0, bottom_thickness+50])
            cube([observation_surface_x, observation_surface_y, 100], center=true);

        translate([0, 0, bottom_thickness+50])
            cube([observation_surface_x-border_corner_size*2, observation_surface_y*2, 100], center=true);

        translate([0, 0, bottom_thickness+50])
            cube([observation_surface_x*2, observation_surface_y-border_corner_size*2, 100], center=true);

        translate([water_block_length/2+observation_surface_x/2, 0, 0])
            cube([observation_surface_x, water_block_width, bottom_thickness*3], center=true);
    }
}

1001_P_bk();
