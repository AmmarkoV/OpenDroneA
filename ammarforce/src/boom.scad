use <holes.scad>;

thickness=3; //3 mm
   
module boom()
{ 
   difference()
   {  
    translate([0,-5,0]) { cube([285, 10, 10]); } 
    translate([-5,-2.5,2.5]) { cube([295, 5, 5]); } 
   }
}  


module drilledBoom()
{
  difference()
   {
      boom();
      DmmBolt(7 ,0 ,1.5); 
      DmmBolt(33 ,0 ,1.5); 
      DmmBolt(243 ,0 ,1); 
      DmmBolt(273 ,0 ,1); 
      DmmBolt(280 ,0 ,1); 
       
      DmmBoltHor(243-15,5,1);
   } 
   
    
}
 
drilledBoom();