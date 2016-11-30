
module DmmBolt(posX,posY,D)
  { 
   $fn=50;   
    translate([posX,posY,-1]) 
    {  
      cylinder(h=10,r=D);  
    }   
  }
  

module DmmBoltAndScrewHole(posX,posY,D)
  { 
   $fn=50;   
    translate([posX,posY,0]) 
    { cylinder(h=2,r=D+1.5); }   
    translate([posX,posY,-1]) 
    { cylinder(h=10,r=D); }   
  }
  

module removeRectangle(posX,posY,sizX,sizY)
  {  
    translate([posX,posY,-1]) 
    {  
      cube([sizX, sizY, 10]);
    }   
  }
 