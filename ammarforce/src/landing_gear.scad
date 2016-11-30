use <holes.scad>;

thickness=4; //4mm thickness of part



module landingGearPlusCosmetics()
{
  translate([ -5,-65,0]) 
       { 
        cube([100, 70, thickness]); 
       } 
}



module landingGear()
{
  //THIS FILE IS UNDER CONSTRUCTION..!  
  difference()
   {     
    landingGearPlusCosmetics();
    DmmBolt(0,0,1.5);     
    DmmBolt(82,-10,1.5);     
      translate([ -10,-70,-1]) 
       { 
        cube([80, 60, thickness+2]); 
       }    
   }
}

landingGear();