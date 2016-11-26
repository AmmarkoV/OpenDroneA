 
module vida()
{
    
   $fn=50;   
    translate([2,0,1]) 
    {  
      cylinder(h=10,r=3.2);  
    }   
}


module bottomChassis()
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
   translate([-30,-34,-14]){ cube([40, 46, 10]); }
  } 
   translate([-15,-34,-15]){ cube([10, 46, 15]); }

   translate([-37,-34,-15]){ cube([10, 46, 15]); }
   translate([8,-34,-15]){ cube([10, 46, 15]); }

   translate([-10,-26,-30]){
      cube([15, 10, 7]);
   }
   

}

bottomChassis();
vida();