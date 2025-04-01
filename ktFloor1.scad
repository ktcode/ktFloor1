//
// ktFloor1
//
//

gap1 = 0.001;
gap2 = 0.002;

th = 2;

L = 200;
LANW = 9.5;
LANH = LANW-0.5*2;
ACW = 8;
ACH = 4.5;
ACR = 2;

W = 100;
H = 6;
D = 15;

wall();


module main()
{
difference()
{
    union()
    {
        translate([0, -W/2, 0]) cube([L, W, H]);
    }
    translate([-gap1, -W/2, 0]) rotate([11, 0, 0]) cube([L+gap2, W, H*3]);
    translate([L+gap1,  W/2, 0]) rotate([11, 0, 180]) cube([L+gap2, W, H*3]);
    
    
    
    //AC
    translate([0, -ACW/2, 0]) {
    #translate([0, ACW/2, ACH-ACR/2]) resize(newsize=[L, ACW, ACR]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    #translate([0, 0, 0]) cube([L, ACW, ACH-ACR/2]);
    }
    //LAN1
    translate([0, -LANW/2+40/2, 0]) {
    #translate([0, LANW/2, 0]) resize(newsize=[L, LANW, LANH]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    }
    //LAN2
    translate([0, -LANW/2-40/2, 0]) {
    #translate([0, LANW/2, 0]) resize(newsize=[L, LANW, LANH]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    }
}
}



module wall()
{
LL = 30;
difference()
{
    union()
    {
        translate([0, -W/2, 0]) cube([LL, W, 57-30]);
        translate([0, -W/2, 0]) cube([LL+24, 20+th*2, 57]);
        translate([0, -W/2-20-4, 57]) cube([LL+24, 40+th*2+4, 20+th*2+th*2]);
    }
    translate([LL, -100.4/2, 0]) cube([24, 100.4, 100]);
    translate([LL, -4-100.4/2, 0]) cube([24, 4, 100]);

    translate([th, -W/2+th, th]) cube([LL+gap2, W-th*2, 57-th*2-30]);
    translate([th, -W/2+th, th]) cube([LL+24, 20, 57]);
    translate([th, -W/2-20+th-4, 57+th]) cube([LL+24, 40+4, 20+th*2]);
    #translate([LL+24-6, -W/2-20+th-th-4, 57+th]) cube([6, 40, 20+th*2]);
    
    
    
    
    //AC
    translate([0, -ACW/2, 0]) {
    #translate([0, ACW/2, ACH-ACR/2]) resize(newsize=[LL, ACW, ACR]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    #translate([0, 0, 0]) cube([LL, ACW, ACH-ACR/2]);
    }
    //LAN1
    translate([0, -LANW/2+40/2, 0]) {
    #translate([0, LANW/2, 0]) resize(newsize=[LL, LANW, LANH]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    }
    //LAN2
    translate([0, -LANW/2-40/2, 0]) {
    #translate([0, LANW/2, 0]) resize(newsize=[LL, LANW, LANH]) rotate([0, 90, 0]) cylinder(h=1, r=1, $fn=100);
    }
}
}



