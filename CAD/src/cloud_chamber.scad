//========== CLOUD CHAMBER MAIN MODEL ==========//

include <../parameters.scad>

use <components/frame.scad>
use <components/fan_radiator.scad>
use <components/pump.scad>

use <1001_P_bk.scad>
use <1002_Cu.scad>

module cloud_chamber() {
    translate([0, 0, -ALU30_size/2])
        frame();

    translate([-5, chamber_deepth/2-fan_thickness/2, radiator_height/2+5])
        fan_radiator();

    translate([chamber_width/2-pump_diameter/2-20, chamber_deepth/4, chamber_height-pump_height])
        rotate([0, 0, -90])
            pump();

    translate([0, 0, chamber_height])
    union() {
        1001_P_bk(true);

        translate([0, 0, 1001_P_bk_bottom_thickness+peltier_thickness*2+water_block_thickness])
            1002_Cu();
    }
}

cloud_chamber();