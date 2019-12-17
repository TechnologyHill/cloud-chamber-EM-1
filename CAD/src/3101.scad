include <../parameters.scad>

use <components/fan.scad>
use <components/radiator.scad>

rotate([90, 0, 0]) {
    fan();

    translate([-fan_size, 0, 0])
        fan();

    translate([fan_size, 0, 0])
        fan();
}

translate([-fan_size*1.5-radiator_fans_translate, fan_thickness/2, -radiator_height/2])
    radiator();