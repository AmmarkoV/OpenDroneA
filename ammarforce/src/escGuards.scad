use <holes.scad>;

module afroESC20APlastic()
{
 //Covering plastic surface..   
 translate([-32 , -17 , -9.5 ]) 
  {  
      cube([64, 34, 19]);  
  } 
  
 translate([17,0,4.5]) 
  {  
   rotate([0,90,0]) {cylinder(h=15,r=7); }    
  }     
 
    
}
 

module afroESC20AHoles()
{
//Inside space for ESC  
translate([-30 , -15 , -7.5 ]) 
  {  
      cube([60, 30, 15]);  
  } 
  
//Door for sliding the ESC in 
translate([-30 , -15 , -7.5 ]) 
  {  
      cube([80, 30, 15]);  
  }  
 
/* //This causes object to be non two manifold..!
 translate([15,0,4.5]) 
  {  
   rotate([0,90,0]) {cylinder(h=25,r=5); }    
  }
*/


 //Motor Cables out RED 
 translate([-42.5, -10 ,0 ]) 
  {  
   rotate([0,90,0]) {cylinder(h=15,r=4); }    
  }  
 //Motor Cables out YELLOW
 translate([-42.5, 0 ,0 ]) 
  {  
   rotate([0,90,0]) {cylinder(h=15,r=4); }    
  }  
 //Motor Cables out BLACK
 translate([-42.5, 10 ,0 ]) 
  {  
   rotate([0,90,0]) {cylinder(h=15,r=4); }    
  }  

}
 

module afroESC20ACase()
{
 difference()
   {    
     afroESC20APlastic();
     afroESC20AHoles();
   }
}
 
 afroESC20ACase();