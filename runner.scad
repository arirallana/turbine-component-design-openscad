
base_height = 5;
base_radius = 20;
module base(base_height,base_radius){   
    cylinder(h=base_height, r=base_radius, center=true);}

ring_height = 5;
ring_radius = 24;
module top_ring(ring_height, ring_radius){
    
    difference(){
    cylinder(h=ring_height,r=ring_radius, center=true);
    
    cylinder(h=ring_height,r=ring_radius*0.78, center=true);}}
    
w = 3; 
h = 1.5;       
l = 26;      
dh = 2;           
 module curve(width, height, length, dh) {
    r = (pow(length/2, 2) + pow(dh, 2))/(2*dh);
    a = 2*asin((length/2)/r);
    translate([-(r -dh), 0, -width/2]) rotate([0, 0, -a/2])         rotate_extrude(angle = a) translate([r, 0, 0]) square(size = [height, width], center = true);
}

module curve_trn(){
    rotate([90,20,0])
    translate([-12,10,0])
    curve(w, h, l, dh);}

module cone(r,n){
    step = 360/n;
    for (i = [0:step:359]) {
        angle = i;
        dx = r*cos(angle);
        dy = r*sin(angle);
        translate([dx,dy,0])
        rotate([0,0,angle])
        curve_trn();
        }}
    
module blade(){
    linear_extrude(height = 29, center = true, convexity = 50, twist = -40)
    translate([-20, -4.5, -10])
    square([1.5,9],center=true);}

module blade_trn(){
    rotate([0,0,300])
    translate([10, -5, 12])
    blade();}

module all_blades(r,n){
    step = 360/n;
    for (i = [0:step:359]) {
        angle = i;
        dx = r*cos(angle);
        dy = r*sin(angle);
        translate([dx,dy,0])
        rotate([0,0,angle])
        blade_trn();
        }}

translate([0,0,24])
    top_ring(ring_height,ring_radius);
r = 0.5;
n = 20;
all_blades(r,n);
difference(){
    union(){
        r = 2;
        n = 22;
        cone(r,n);
        base(base_height,base_radius);
        cylinder(h=5, r=2, center=true);};
    cylinder(h=5, r=1, center=true);}

