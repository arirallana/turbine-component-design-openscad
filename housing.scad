difference(){
difference(){
    difference(){
        union(){
            translate([-15,-2,20])
                cylinder(h=25, r=9.5, center = true);
            rotate([90,0,0])
                cylinder(h=32,r=27,center=true);};
            translate([-15,-2,20])
                cylinder(h=25, r=7.5, center = true);};
            rotate([90,0,0])
            translate([0,0,2])
                cylinder(h=30,r=25,center=true);};
           
    rotate([90,0,0]) cylinder(h=40,r=5,center=true);}
                

module screw_hole(){
    difference(){
    rotate([90,0,0])
    translate([0,29,-16])
        cylinder(h=32,d=7);
    rotate([90,0,0])
    translate([0,29.2,-16])
        cylinder(h=32,d=3.2);}}

module supports(){
    rotate([90,0,0])
    translate([-8.5,25,-16])
    cube([2,8,14]);
    
    rotate([90,0,0])
    translate([-12.5,23,-16])
    cube([2,10,11]);
    
    rotate([90,0,0])
    translate([-16.5,21,-16])
    cube([2,12,9]);
    
    rotate([90,0,0])
    translate([-20.5,17,-16])
    cube([2,16,11]);
    
    rotate([90,0,0])
    translate([-24.5,11,-16])
    cube([2,22,16]);
}
supports();
screw_hole();
mirror([0,0,1])screw_hole();
        
rotate([0,90,0])
screw_hole();
rotate([0,-90,0])
screw_hole();        

    
