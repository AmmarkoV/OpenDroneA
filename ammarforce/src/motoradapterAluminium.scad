//THIS IS AN ALUMINUM PART
//IT SHOULD BE CNC'ed 
//
use <holes.scad>;
use <motorsafety.scad>;
use <motorGuardAluminium.scad>;

addMotorGuard=0;
thickness=3; //mm thickness of part
motorHeight=35;  //35mm height of motor
s=1.5; //Screw size = 1.5 mm ( 3mm diameter )


module motorAluminum()
{
//Cylinder in the edge of the part
translate([-25,-10 ,0]) 
     { cube([80, 20, thickness]); } 

//nice curve near quadcopter
translate([54,0,0]) 
    { cylinder(h=thickness,r=10);   }   

translate([0,0,0]) 
    { cylinder(h=thickness,r=28.0);   }   
 
}


module motorAdapterSmoothHoles()
{ 
 //First bolt is configurable  
  for(xV = [50:0.15:52]) DmmBolt(xV,0,s);     
  for(sV = [5: 0.15 :9]) DmmBolt(sV,sV,s);  
  for(sV = [5: 0.15 :9]) DmmBolt(-sV,sV,s);  
  for(sV = [5: 0.15 :9]) DmmBolt(sV,-sV,s);  
  for(sV = [5: 0.15 :9]) DmmBolt(-sV,-sV,s);  
}


module motorAdapterSimpleHoles()
{ 
 DmmBolt(50,0,s); 
 DmmBolt(51,0,s); 
 DmmBolt(52,0,s);  

 //Motor Screws  X 
     DmmBolt(5,5,s);  
     DmmBolt(6,6,s);  
     DmmBolt(7,7,s);  
     DmmBolt(8,8,s);  
     DmmBolt(9,9,s);  
     //DmmBolt(10,10,s);   

     DmmBolt(-5,5,s);  
     DmmBolt(-6,6,s);  
     DmmBolt(-7,7,s);  
     DmmBolt(-8,8,s);  
     DmmBolt(-9,9,s);  
     //DmmBolt(-10,10,s);   
        
     DmmBolt(-5,-5,s);  
     DmmBolt(-6,-6,s);  
     DmmBolt(-7,-7,s);  
     DmmBolt(-8,-8,s);  
     DmmBolt(-9,-9,s);   
     //DmmBolt(-10,-10,s);   

     DmmBolt(5,-5,s);  
     DmmBolt(6,-6,s);  
     DmmBolt(7,-7,s);  
     DmmBolt(8,-8,s);  
     DmmBolt(9,-9,s);  
     //DmmBolt(10,-10,s);   
    
}



module motorAdapterManualSmoothHoles()
{ 
 DmmBolt(50,0,s); 
 DmmBolt(50.25,0,s); 
 DmmBolt(50.5,0,s); 
 DmmBolt(50.75,0,s); 
 DmmBolt(51,0,s); 
 DmmBolt(51.25,0,s); 
 DmmBolt(51.5,0,s); 
 DmmBolt(51.75,0,s); 
 DmmBolt(52,0,s);  

 //Motor Screws  X 
 DmmBolt(5,5,s);  
 DmmBolt(5.25 ,5.25,s);  
 DmmBolt(5.5  ,5.5,s);  
 DmmBolt(5.75 ,5.75,s);  
    
 DmmBolt(6,6,s);  
 DmmBolt(6.25 ,6.25,s);  
 DmmBolt(6.5  ,6.5,s);  
 DmmBolt(6.75 ,6.75,s);  
 
 DmmBolt(7,7,s);  
 DmmBolt(7.25 ,7.25,s);  
 DmmBolt(7.5  ,7.5,s);  
 DmmBolt(7.75 ,7.75,s);  
 
 DmmBolt(8,8,s);  
 DmmBolt(8.25 ,8.25,s);  
 DmmBolt(8.5  ,8.5,s);  
 DmmBolt(8.75 ,8.75,s);  
 
 DmmBolt(9,9,s);  
 // -- -- -- -- -- -- -- -- -- --   

 DmmBolt(-5,5,s);  
 DmmBolt(-5.25 ,5.25,s);  
 DmmBolt(-5.5  ,5.5,s);  
 DmmBolt(-5.75 ,5.75,s);  
    
 DmmBolt(-6,6,s);  
 DmmBolt(-6.25 ,6.25,s);  
 DmmBolt(-6.5  ,6.5,s);  
 DmmBolt(-6.75 ,6.75,s);  
 
 DmmBolt(-7,7,s);  
 DmmBolt(-7.25 ,7.25,s);  
 DmmBolt(-7.5  ,7.5,s);  
 DmmBolt(-7.75 ,7.75,s);  
 
 DmmBolt(-8,8,s);  
 DmmBolt(-8.25 ,8.25,s);  
 DmmBolt(-8.5  ,8.5,s);  
 DmmBolt(-8.75 ,8.75,s);  
 
 DmmBolt(-9,9,s);  
 // -- -- -- -- -- -- -- -- -- --   
       
 DmmBolt(-5,-5,s);  
 DmmBolt(-5.25 ,-5.25,s);  
 DmmBolt(-5.5  ,-5.5,s);  
 DmmBolt(-5.75 ,-5.75,s);  
    
 DmmBolt(-6,6,s);  
 DmmBolt(-6.25 ,-6.25,s);  
 DmmBolt(-6.5  ,-6.5,s);  
 DmmBolt(-6.75 ,-6.75,s);  
 
 DmmBolt(-7,-7,s);  
 DmmBolt(-7.25 ,-7.25,s);  
 DmmBolt(-7.5  ,-7.5,s);  
 DmmBolt(-7.75 ,-7.75,s);  
 
 DmmBolt(-8,8,s);  
 DmmBolt(-8.25 ,-8.25,s);  
 DmmBolt(-8.5  ,-8.5,s);  
 DmmBolt(-8.75 ,-8.75,s);  
 
 DmmBolt(-9,-9,s);  
 // -- -- -- -- -- -- -- -- -- --   

 DmmBolt(5,-5,s);  
 DmmBolt(5.25 ,-5.25,s);  
 DmmBolt(5.5  ,-5.5,s);  
 DmmBolt(5.75 ,-5.75,s);  
    
 DmmBolt(6,-6,s);  
 DmmBolt(6.25 ,-6.25,s);  
 DmmBolt(6.5  ,-6.5,s);  
 DmmBolt(6.75 ,-6.75,s);  
 
 DmmBolt(7,-7,s);  
 DmmBolt(7.25 ,-7.25,s);  
 DmmBolt(7.5  ,-7.5,s);  
 DmmBolt(7.75 ,-7.75,s);  
 
 DmmBolt(8,-8,s);  
 DmmBolt(8.25 ,-8.25,s);  
 DmmBolt(8.5  ,-8.5,s);  
 DmmBolt(8.75 ,-8.75,s);  
 
 DmmBolt(9,-9,s);  
 // -- -- -- -- -- -- -- -- -- --   
  
}





module motorAdapter()
{
 //motorSafety();
if (addMotorGuard)
{    
 translate([0,0,-5])
    {
     motorAdapterGuard();
    }    
}    
    
 difference()
   {
    //Motor plastic   
    //-------------------------------------
    motorAluminum();     
      
    {
    //Cosmetic holes 
    //-------------------------------------
    DmmBolt(24,19.6,10.2); 
    DmmBolt(24,-19.6,10.2); 
     
    DmmBolt(-30,19,10.2); 
    DmmBolt(-30,-19,10.2);        
     
    //Functional Holes
    //-------------------------------------   
     //Big hole in 0,0   
     DmmBolt(0,0,4.4); 
        
     //3mm screws to chassis   
     DmmBolt(-22,0,s); 
     DmmBolt(22,0,s); 
       
     //3mm screws for optional motor guard
     DmmBolt(0,-22 ,s); 
     DmmBolt(0,22 ,s); 
       
      
    //motorAdapterSimpleHoles(); 
     motorAdapterSmoothHoles();
    //motorAdapterManualSmoothHoles();
      
 
     }
   }
   
      
     
}





motorAdapter();