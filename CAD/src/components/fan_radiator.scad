//========== RADIATOR WITH 3 FANS AND FITTING ==========//

include <../../parameters.scad>

use <fan.scad>
use <radiator.scad>

module fan_radiator() {
translate([0, radiator_thickness+fan_thickness/2, 0])
rotate([-90, 0, 0]) {
    fan();

    translate([-fan_size, 0, 0])
        fan();

    translate([fan_size, 0, 0])
        fan();
}

translate([-fan_size*1.5-radiator_fans_translate, 0, -radiator_height/2])
    radiator();
}

fan_radiator();