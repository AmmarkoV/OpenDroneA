 
module bracket()
{
 difference()
 {       
 rotate([0,180,0])   
    {  
    translate([0,0,0])
    {
    import("/home/ammar/Documents/Objects/Drone/zmr250_gopro_mount.stl");
    }
   }
   
   translate([-30,-40,-14]){ cube([40, 60, 10]); }
 }
 
 
   translate([-17,-40,-15]){ cube([14, 60, 15]); }
   translate([-37,-40,-15]){ cube([10, 60, 15]); }
   translate([8,-40,-15]){ cube([10, 60, 15]); }
 
}
 
 
module vida()
{
    
   $fn=50;   
    translate([2,0,1]) 
    {  
      cylinder(h=65,r=3.2);  
    }   
}


module bottomChassis()
{ 
 difference()
 {   
   bracket();
    
    //Vida desimatos 
    rotate([90,0,45])   
    {      
     translate([-8,-10,-23])
     {
        vida();
     }
    }
       
    rotate([45,0,45])   
    {      
    translate([-11,-10,-19])
     { cube([10, 10, 5]); }
    }
    
  }  
}

bottomChassis(); 