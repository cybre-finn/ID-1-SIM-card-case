include<lib/roundCornersCube.scad>
CardX=53.98;
CardY=85.60;
CardZ=2.8;
//A bit bigger broader than in ISO/IEC 7810
//because of the printer's percularities
SimX=17;
SimY=27;
SimZ=3;
difference () {
    translate([CardX/2,CardY/2,1.5])
    roundCornersCube(CardX, CardY, CardZ, 4);
    
    translate([7,6,1])
        cube([SimX, SimY, SimZ]);
    translate([CardX-SimX-7,6,1])
        cube([SimX, SimY, SimZ]);
    
    translate([7,CardY-SimY-6,1])
        cube([SimX, SimY, SimZ]);
    translate([CardX-SimX-7,CardY-SimY-6,1])
        cube([SimX, SimY, SimZ]);
    
    translate([3,CardY-24,2])
        cube([CardX-6, SimY-5, SimZ]);
    translate([3,3,2])
        cube([CardX-6, SimY-5, SimZ]);
    
    translate([CardX-SimX-4,29,-4])
        cube([SimX-6, SimY, 10]);
    
    translate([10,29,-4])
        cube([SimX-6, SimY, 10]);


}
translate([57,0,0]) {
    cube([CardX-7, SimY-6, 0.8]);
}
translate([57,24,0]) {
    cube([CardX-7, SimY-6, 0.8]);
}