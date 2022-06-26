difference(){
    union(){
    rotate([90,0,0])
    cylinder(h=15,r=19.5,center=true);
    rotate([90,0,0])
    translate([0,0,7])
    cylinder(h=2,r=27,center=true);};
            
    rotate([90,0,0])
    translate([0,0,0])
    cylinder(h=19,r=17.5,center=true);}
    
module screw_hole(){
    difference(){
    rotate([90,0,0])
    translate([0,29,6])
        cylinder(h=2,d=7);
    rotate([90,0,0])
    translate([0,29.2,6])
        cylinder(h=2,d=3.2);}}
        
screw_hole();
mirror([0,0,1])screw_hole();
        
rotate([0,90,0])
screw_hole();
rotate([0,-90,0])
screw_hole();  
    
