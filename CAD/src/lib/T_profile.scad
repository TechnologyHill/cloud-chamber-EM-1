module T_profile(width, height, thickness=2, size=100) {
    translate([width/-2, -thickness, 0])
        cube([width, thickness, size]);
    
    translate([thickness/-2, 0, 0])
        cube([thickness, height, size]);
}

T_profile(20, 20);