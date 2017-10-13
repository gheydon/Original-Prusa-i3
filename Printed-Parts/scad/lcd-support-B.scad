// PRUSA iteration3
// lcd-support-B
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <lcd-support-A.scad>;

module supportb()
{
slcdupporta();
//SD card cover
rotate([0,0,45]) difference(){
translate( [ -3 , 3 , 10 ] )  cube( [ 2 , 55 , 10 ] );
translate( [ -4 , 3 , 20 ] ) rotate([0,90,0]) cylinder( h = 4, r = 7, $fn=30);
translate( [ -4 , 58 , 20 ] ) rotate([0,90,0]) cylinder( h = 4, r = 7, $fn=30);
}
}

module dimmer()
{
  translate( [ -1, 41.5, -4 ] ) cube( [ 10, 8, 8 ] );
  translate( [ 9, 45.5, -4 ] ) cylinder(h = 8, r = 4);
  translate( [ 8, 45.5, -4 ] ) cylinder(h = 15, r = 4);
}

difference() {
lcdsupportb();
rotate( [ 0, -90, 45 ] ) dimmer();
}


