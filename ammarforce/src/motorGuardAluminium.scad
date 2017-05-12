//THIS IS AN ALUMINUM PART
//IT SHOULD BE CNC'ed 
//
use <holes.scad>;
use <motorsafety.scad>;
thickness=4; //mm thickness of part
perimeterThickness=10; //mm thickness of part
perimeterWidth=6; //mm thickness of part
motorHeight=35;  //35mm height of motor
s=1.5; //Screw size = 1.5 mm ( 3mm diameter )

extraBrackets=0;


module bumper()
{
 //Bumper 
 difference()
   {
    translate([0,0,0]) 
    { cylinder(h=thickness+perimeterThickness,r=178.0);   }     
    translate([0,0,-1]) 
    { cylinder(h=thickness+perimeterThickness+2,r=178.0-perimeterWidth); }      
    translate([30,-250,-2])  { cube([150,600,perimeterThickness+8]);}    
      
   } 
}

module bracketsThatHoldBumper()
{
   //Brackets That Hold Bumper
  translate([-3,25,0])    { cube([6,150,thickness]);}  
  translate([-3,-175,0])  { cube([6,150,thickness]);}     
  translate([-175,-3,0])  { cube([150,6,thickness]);}  
  
if (extraBrackets)
{   
  rotate([0,0,45])
  {  
   translate([-175,-3,0])  { cube([150,6,thickness]);}  
  } 
  rotate([0,0,-45])
  {  
   translate([-175,-3,0])  { cube([150,6,thickness]);}  
  }    
}
}

 module motorPlateAdapter()
{
 difference()
   {
    //Part That Gets Screwed on motor adapter   
    //-------------------------------------
    translate([0,0,0]) 
     { cylinder(h=thickness,r=28.0);   }     
      
    {
    //Cosmetic holes 
    //-------------------------------------
    DmmBolt(24,19.6,10.2); 
    DmmBolt(24,-19.6,10.2); 
     
    DmmBolt(-30,19,10.2); 
    DmmBolt(-30,-19,10.2);        
     
    //Functional Holes
    //-------------------------------------
     
     DmmBolt(17,0,14.); 
     
        
     //Big hole in 0,0   
     DmmBolt(0,0,15.4); 
        
     //3mm screws to chassis   
     DmmBolt(-22,0,s); 
     DmmBolt(22,0,s); 
       
     //3mm screws for optional motor guard
     DmmBolt(0,-22 ,s); 
     DmmBolt(0,22 ,s);    
     }
   }
}
 
module motorAdapterGuard()
{ 
  bumper();
  bracketsThatHoldBumper();
  motorPlateAdapter();
  
}
 

motorAdapterGuard();