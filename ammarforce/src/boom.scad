use <holes.scad>;

dimension=10; //10 mm
thickness=1; //1 mm
   
module boom()
{ 
 holedim=dimension - (2 * thickness);   
   difference()
   {  
    translate([0,-(dimension/2),0]) 
     { cube([285,dimension,dimension]); } 
    
    translate(
               [ 
                -5,
                -1 * ( (dimension/2) - thickness ) ,             thickness
               ]
              ) 
    { cube([295, holedim, holedim]); } 
      
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