include <../../parameters.scad>

module fitting() {
    //translate([0, 0, fitting_seal_thickness])
    difference() {
        union() {
            translate([0, 0, -fitting_thread_height])
                cylinder(d=fitting_thread_diameter, h=fitting_thread_height, $fn=40);

            cylinder(d=fitting_inner_diameter+fitting_wall_thickness*2, h=fitting_height-fitting_overhang_height+fitting_nut_height, $fn=100);

            cylinder(d=fitting_nut_diameter, h=fitting_nut_height, $fn=6);

            translate([0, 0, fitting_height-fitting_overhang_height+fitting_nut_height])
                cylinder(d1=fitting_inner_diameter+fitting_wall_thickness*2+fitting_overhang_size*2, d2=fitting_inner_diameter, h=fitting_overhang_height, $fn=100);
        }

        cylinder(d=fitting_inner_diameter, h=100, center=true, $fn=100);

        union() {
        translate([0, 0, -fitting_thread_height-0.1])
            cylinder(d=fitting_bottom_inner_diameter, h=fitting_bottom_inner_height+0.101, $fn=100);

        translate([0, 0, -fitting_thread_height+fitting_bottom_inner_height])
            cylinder(d1=fitting_bottom_inner_diameter, d2=fitting_inner_diameter, h=1, $fn=100);
        }
    }
}

fitting();