use <battery.scad>;
use <batteryCradle.scad>;
use <mainplate_bottom.scad>;
use <mainplate_top.scad>;
use <boom.scad>;
use <batteryCradle.scad>;
use <motoradapter.scad>;

module ammarforce()
{
 translate([0,0,-5])
   { mainPlateBottom(); }
   
 battery();
 batteryCradle();

 translate([0,0,-20])
   { mainPlateTop(); }
   
   
 translate(0,0,0) { rotate([0,0,45])  { drilledBoom(); } }
 translate(0,0,0) { rotate([0,0,135]) { drilledBoom(); } }
 translate(0,0,0) { rotate([0,0,225]) { drilledBoom(); } }
 translate(0,0,0) { rotate([0,0,315]) { drilledBoom(); } }
   
 translate(0,0,-60) {
 motorAdapter(); 
 }
}


ammarforce();