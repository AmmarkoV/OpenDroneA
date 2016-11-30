use <battery.scad>;
use <holes.scad>;

thickness=4; //4mm thickness of part
drawBattery=0;

module cosmeticCylinder(posX,posY,D)
  { 
   $fn=50;   
    translate([posX,posY,0]) 
    {  
      cylinder(h=thickness,r=D);  
    }   
  }
   
module mainPlatePlusCosmetics()
{
  translate([-61,-61,0]) 
       { 
        cube([122, 122, thickness]); 
       } 

  //Also draw battery
  if (drawBattery)
  {
   translate([0,0,thickness+0.1]) 
   { battery(); }
  }  

  // Back Battery Safety screw
  translate([-101,-10,0]) 
       { cube([52, 20, thickness]);  } 
  cosmeticCylinder(-85,0,20);
       
  // Front Battery Safety Latch     
  translate([61,-37,0]) 
       { cube([40, 12, thickness]); } 
  translate([61,25,0]) 
       { cube([40, 12, thickness]); } 
  translate([82,-30,0]) 
       { cube([19, 62, thickness]); } 


  cosmeticCylinder(-51,-51,20);  
  cosmeticCylinder( 51,-51,20);  
  cosmeticCylinder( 51, 51,20);  
  cosmeticCylinder(-51, 51,20);  
}



module mainPlateBottom()
{
 difference()
   {      
       mainPlatePlusCosmetics();
       
       //Center hole..
       DmmBolt( 0, 0,10);  
       
       //Battery holder holes
       DmmBolt( 15,-31,1.5);  
       DmmBolt( -15,-31,1.5);  
       DmmBolt( 15,31,1.5);  
       DmmBolt( -15,31,1.5);  
       
       //Battery safety screw
       DmmBolt( -85, 0,3);  
       //Battery latch screw
       DmmBolt( 92, 0,3);  
       
       
       //Line Drills
       removeRectangle(-40,0,15,3);
       removeRectangle(25,0,15,3);
       rotate([0,0,90]){ removeRectangle(-40,0,15,3); }
       rotate([0,0,90]){ removeRectangle(25,0,15,3); }
       
       
       // holes bottom left
       DmmBolt(-51,-51,3);  
       DmmBolt(-33,-31,3);  
       // holes bottom right
       DmmBolt( 51,-51,3);  
       DmmBolt( 33,-31,3);  
     
       // holes top left
       DmmBolt(-51, 51,3);  
       DmmBolt(-33, 31,3);  
       // holes top right
       DmmBolt( 51, 51,3);  
       DmmBolt( 33, 31,3);  
      
       
     }
}


mainPlateBottom();