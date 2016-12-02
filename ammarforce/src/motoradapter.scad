use <holes.scad>;
thickness=4; //4mm thickness of part

module motorAdapter()
{

translate([22,14,0]) { cylinder(h=thickness,r=8.5);   }   
translate([22,-14,0]) { cylinder(h=thickness,r=8.5);   }   

translate([-34,0,0]) { cylinder(h=thickness,r=8.5);   } 
translate([64,0,0]) { cylinder(h=thickness,r=8.5);   }   

translate([12,22,0]) { cylinder(h=thickness,r=8.5);   }  
translate([12,-22,0]) { cylinder(h=thickness,r=8.5);   }  

 difference()
   {     
    {
     translate([-35,-22.5,0]) { cube([100, 45, thickness]); } 
    }
    {
     //Big hole in 0,0   
     DmmBolt(0,0,4.4); 
        
     //3mm screws to chassis   
     DmmBolt(-22,0,1.5); 
     DmmBolt(22,0,1.5); 
     
     //First bolt is configurable  
     DmmBolt(50,0,1.5); 
     DmmBolt(51,0,1.5); 
     DmmBolt(52,0,1.5);  
        
     //Less material towards where screws axis   
     removeRectangle(22,10,50,20);
     removeRectangle(22,-30,50,20);
        
        
     //Motor Screws  X 
     DmmBoltAndScrewHole(5,5,1.5);  
     DmmBoltAndScrewHole(6,6,1.5);  
     DmmBoltAndScrewHole(7,7,1.5);  
     DmmBoltAndScrewHole(8,8,1.5);  
     DmmBoltAndScrewHole(9,9,1.5);  
     DmmBoltAndScrewHole(10,10,1.5);   

     DmmBoltAndScrewHole(-5,5,1.5);  
     DmmBoltAndScrewHole(-6,6,1.5);  
     DmmBoltAndScrewHole(-7,7,1.5);  
     DmmBoltAndScrewHole(-8,8,1.5);  
     DmmBoltAndScrewHole(-9,9,1.5);  
     DmmBoltAndScrewHole(-10,10,1.5);   
        
     DmmBoltAndScrewHole(-5,-5,1.5);  
     DmmBoltAndScrewHole(-6,-6,1.5);  
     DmmBoltAndScrewHole(-7,-7,1.5);  
     DmmBoltAndScrewHole(-8,-8,1.5);  
     DmmBoltAndScrewHole(-9,-9,1.5);   
     DmmBoltAndScrewHole(-10,-10,1.5);   

     DmmBoltAndScrewHole(5,-5,1.5);  
     DmmBoltAndScrewHole(6,-6,1.5);  
     DmmBoltAndScrewHole(7,-7,1.5);  
     DmmBoltAndScrewHole(8,-8,1.5);  
     DmmBoltAndScrewHole(9,-9,1.5);  
     DmmBoltAndScrewHole(10,-10,1.5);   

     
     //Cosmetic holes
     DmmBolt(-34,20,7.4); 
     DmmBolt(-34,-20,7.4); 
          
  
    }
   }
   
      
     
}





motorAdapter();