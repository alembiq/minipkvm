$U = 1;

translate([0,0,0]) {
    difference() {
        union() {
            cube([20,3,44*$U]);
            translate([19,0,0]) cube([56,70.5,44*$U]);
        }
        translate([24,-1,5.5]) minkowski(){
            cube([46.5,70,32]);
            rotate([0,90,0]) sphere(r=2, $fn=50);
        }
        for(spread = [6:15.9:45]) {
            color("red") translate([7.5 ,5,spread]) rackMount();
        }
    }
}


module rackMount() {
    rotate([ 90,0,0]) hull() {
        cylinder(h=20, d = 6, $fn=20);
        translate([5,0,0]) cylinder(h=20, d = 6, $fn=20);
    }
}






