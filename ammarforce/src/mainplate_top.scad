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
       DmmBolt( 0, 0,20);  
       
       //Battery holder holes
       DmmBolt( 15,-31,1.5);  
       DmmBolt( -15,-31,1.5);  
       DmmBolt( 15,31,1.5);  
       DmmBolt( -15,31,1.5);  
       
       //Battery safety screw
       DmmBolt( -85, 0,3);  
       //Battery latch screw
       DmmBolt( 92, 0,3);  
       
       
       //Line Drills Horizontal/Vertical
       removeRectangle(-40,-1.5,15,3);
       removeRectangle(25,-1.5,15,3);
       rotate([0,0,90]){ removeRectangle(-40,-1.5,15,3); }
       rotate([0,0,90]){ removeRectangle(25,-1.5,15,3); }
       
       //Line Drills Rotated..
       rotate([0,0,45])
      {   
       removeRectangle(-35,-1.5,10,3);
       removeRectangle(25,-1.5,10,3);
       rotate([0,0,90]){ removeRectangle(-35,-1.5,10,3); }
       rotate([0,0,90]){ removeRectangle(25,-1.5,10,3); }
   }
   
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
     
     
  //Hole in the middle plus supports..   
  cosmeticCylinder(0,0,8);   
  rotate([0,0,45])
  {   
   translate([-1,-20,0]) {cube([2, 40, thickness]);} 
   rotate([0,0,90])
   {     
    translate([-1,-20,0]) 
       { cube([2, 40, thickness]); } 
   }
  }

  //Back LED 
  //translate([50,-15,0]) 
  //     { cube([10, 32, 5+thickness]); } 

  
}


mainPlateBottom();