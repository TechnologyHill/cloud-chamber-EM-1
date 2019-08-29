include <../parameters.scad>

bottom_thickness = 5;
border_thickness = 2;
border_height = water_block_thickness+peltier_thickness*2+2;
border_corner_size = 10;
copper_plate_support = 2;

module 1001_AB(peltiers=false) {
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
    }
}

1001_AB(false);