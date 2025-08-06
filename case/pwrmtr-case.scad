$fn=360;

screw_distance = 16.5;
screw_diameter = 3;

module spacer() {
	difference() {
		circle(d=32);
		translate([screw_distance/2,screw_distance/2]) circle(d=screw_diameter);
		translate([screw_distance/2,-screw_distance/2]) circle(d=screw_diameter);
		translate([-screw_distance/2,screw_distance/2]) circle(d=screw_diameter);
		translate([-screw_distance/2,-screw_distance/2]) circle(d=screw_diameter);
        
		translate([0,-13.44]) square([4*2.54,2.54], center=true);
        translate([0,-14]) square([4*2.54,2.54], center=true);
        translate([0,-16]) square([4*2.54,2.54], center=true);
        circle(d=15);
	}
}

spacer();
