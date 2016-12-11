use <holes.scad>;
use <motorsafety.scad>; 
use <motoradapterAluminium.scad>;
motorHeight=35;  //35mm height of motor
holesAtDiameter=22.0;
s=1.5; //Screw size = 1.5 mm ( 3mm diameter )
 
y=0;
x=0;
ductDetail = 0;
ductHeight=0;
incH=0.3;
incW=1.5;

module DmmBoltDeep(posX,posY,D)
  { 
   $fn=50;   
    translate([posX,posY,-110]) 
    {  
      cylinder(h=120,r=D);  
    }   
  }

module parametricDuctSupportPlastic()
{
    
 rotate([0,0,0]) 
  { 
   translate([20,-5, -20 ])   { cube([110,10,5]); } 
   translate([70,-5, -25 ])   { cube([60,10,8]);  } 
   translate([90,-5, -30 ])   { cube([40,10,8]);  } 
   translate([105,-5, -35 ])  { cube([30,10,8]);  } 
   translate([120,-5, -40 ])  { cube([15,10,8]);  }
  } 
 rotate([0,0,90]) 
  { 
   translate([20,-5, -20 ])   { cube([110,10,5]); } 
   translate([70,-5, -25 ])   { cube([60,10,8]);  } 
   translate([90,-5, -30 ])   { cube([40,10,8]);  } 
   translate([105,-5, -35 ])  { cube([30,10,8]);  } 
   translate([120,-5, -40 ])  { cube([15,10,8]);  }
  } 
 rotate([0,0,180]) 
  { 
   translate([20,-5, -20 ])   { cube([110,10,5]); } 
   translate([70,-5, -25 ])   { cube([60,10,8]);  } 
   translate([90,-5, -30 ])   { cube([40,10,8]);  } 
   translate([105,-5, -35 ])  { cube([30,10,8]);  } 
   translate([120,-5, -40 ])  { cube([15,10,8]);  }
  } 
 rotate([0,0,270]) 
  { 
   translate([20,-5, -20 ])   { cube([110,10,5]); } 
   translate([70,-5, -25 ])   { cube([60,10,8]);  } 
   translate([90,-5, -30 ])   { cube([40,10,8]);  } 
   translate([105,-5, -35 ])  { cube([30,10,8]);  } 
   translate([120,-5, -40 ])  { cube([15,10,8]);  }
  } 
  
    //Screws for duct  
    translate([0,-22, -20])  { cylinder(h=4,r=4); }     
    translate([0,22, -20])  {  cylinder(h=4,r=4); }    
       
    rotate([0,0,90])
       {
        //Screws for duct  
        translate([0,-22, -20])   { cylinder(h=4,r=4); }     
        translate([0,22, -20])    {  cylinder(h=4,r=4); }    
       }
       
       

 rotate([0,0,45]) { translate([20,-27, -20 ])   { cube([10,50,5]); } }        
 rotate([0,0,90+45]) { translate([20,-27, -20 ])   { cube([10,50,5]); } }        
 rotate([0,0,180+45]) { translate([20,-27, -20 ])   { cube([10,50,5]); } }        
 rotate([0,0,270+45]) { translate([20,-27, -20 ])   { cube([10,50,5]); } }        
}


module parametricDuctSupport()
{
 difference()
  {  
     parametricDuctSupportPlastic();  
    
     DmmBoltDeep(0,-22 ,s);  
     DmmBoltDeep(0, 22 ,s);  
     rotate([0,0,90])
       {
         DmmBoltDeep(0,-22 ,s); 
         DmmBoltDeep(0,22 ,s);  
       }  
 }
}

 
module parametricDuctPlastic(steps,height,bladeVolume)
{ 
 echo("Generating Duct using ",steps, " steps  and height ", height , " for a blade ",bladeVolume);   
 sectionHeight = height/5;
 sectionDetail = steps/5;
    
 tipHeight  = sectionHeight;
 tipWidth =   bladeVolume / 2;
 tipDetail =  sectionDetail; 
 echo(" tipDimensions",tipWidth,"x",tipHeight , " detail " , tipDetail);
     
 ductHeight  = sectionHeight*6;
 ductWidth =   bladeVolume / 4;
 ductDetail =  sectionDetail*4;    
 echo(" ductDimensions",ductWidth,"x",ductHeight , " detail " , ductDetail);
    
    
 echo(" tipHeight" , tipHeight , " / tipDetail " , tipDetail );
 incH=(2*tipHeight)/tipDetail;
 echo(" incH",incH );
 echo(" tipWidth" , tipWidth , " / tipDetail " , tipDetail );
 incW=(tipWidth/2)/tipDetail;
 echo(" incW " , incW);
   
    
 //Second section of tip   
 echo("Second section of tip"); 
  x=bladeVolume;  
  y=0;
  for (i = [0:tipDetail]) 
  { 
   echo("y",y," x",x , "i" , i);
   y=incH*i;    
   x=bladeVolume+incW*i;    
   dim=5*(tipDetail-i);
   difference()
   {     
     translate([0,0, y ])   { cylinder(h=incH,r=x+dim ); } 
     translate([0,0, y-1 ]) { cylinder(h=incH+2,r=x-0); } 
  }
  }     
   
  
 
 incH2=ductHeight/ductDetail;
 echo(" incH2",incH2 );
 incW2=(0.07*bladeVolume)/ductDetail;
 echo(" incW2 " , incW2);
 
 echo("Third part the duct");   
 //Third part the duct
  x2=0;  
  y2=0;
  for (i = [0:ductDetail]) 
  { 
   echo("y2",y2," x2",x2 , " i " , i);
   y2=incH2*i;    
   x2=bladeVolume+incW2*i;    
   difference()
   {     
     translate([0,0, -y2 ])     { cylinder(h=incH2,r=x2+7); } 
     translate([0,0, (-y2)-1 ]) { cylinder(h=incH2+2,r=x2); } 
  }
  }    
  
  
  parametricDuctSupport();
  /*
    translate([-110,14,-40]) 
     { 
      rotate([90,0,0]) 
       {    
           import("../stl/Dxs_Custom_Slow-Flyer_propeller_8x4.5_FAT.STL");
       }   
     } 
 */       
}


module parametricDuct(steps,height,bladeVolume)
{      
    parametricDuctPlastic(steps,height,bladeVolume);   
}
 
 
  parametricDuct(72,64,125);

 /*
 translate([0,0, motorHeight-120]) 
       {
         motorAdapter();
       }
       */