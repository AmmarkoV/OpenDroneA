
module batteryCradlePlastic()
{
  translate([-13,-31,-12.5]) 
       { cube([26, 6, 60]); } 
  translate([-13, 25,-12.5]) 
       { cube([26, 6, 60]); } 
  //Horizontal battery holder       
  translate([-13, -30,45]) 
       { cube([26, 60, 5]); } 
}

module batteryCradleScrews()
{
 $fn=50;   
 rotate([90,0,0])
 {
  translate([-8,-8,-100]) 
    {  
      cylinder(h=200,r=1.5);  
    } 
  translate([0,-8,-100]) 
    {  
      cylinder(h=200,r=1.5);  
    }    
  translate([8,-8,-100]) 
    {  
      cylinder(h=200,r=1.5);  
    }
 }   
}

module batteryCradle()
{ 
  difference()
   {
     batteryCradlePlastic();
     batteryCradleScrews();
   } 
}


batteryCradle();