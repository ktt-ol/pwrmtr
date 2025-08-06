$fn=360;

screw_distance = 16.5;
screw_diameter = 3;

magnet_distance = 23.5;
magnet_diameter = 6;

module holder() {
	difference() {
		square([120,40], center=true);
		translate([screw_distance/2,screw_distance/2]) circle(d=screw_diameter);
		translate([screw_distance/2,-screw_distance/2]) circle(d=screw_diameter);
		translate([-screw_distance/2,screw_distance/2]) circle(d=screw_diameter);
		translate([-screw_distance/2,-screw_distance/2]) circle(d=screw_diameter);
        
        translate([0,magnet_distance/2]) circle(d=magnet_diameter);
        translate([-magnet_distance/2,0]) circle(d=magnet_diameter);
        translate([magnet_distance/2,0]) circle(d=magnet_diameter);
	}
}

holder();
