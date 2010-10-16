/*
Configuration:
- Uncomment one of the "Size configuration" sections.
- Set the items variable to the desired amount.
- Set wall_thickness if you want to.

See README for more information.

Git repository: http://github.com/l0b0/parametric-box

Thingiverse: http://www.thingiverse.com/thing:4448

Copyright (C) 2010 Victor Engmark

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
Size configuration
Uncomment one of the sections below or set your own
The sizes are as seen from the "front", i.e., the cover of a book or CD.
*/

// Default size in case of no configuration
item_width = 15;
item_height = 75;
item_depth = 10;

/*
// Jewel case <http://en.wikipedia.org/wiki/Optical_disc_packaging#Jewelry_case>, the common size for CDs:
item_width = 142;
item_height = 125;
item_depth = 10;
*/

/*
// Slimline jewel case <http://en.wikipedia.org/wiki/Optical_disc_packaging#Slimline_jewel_case>, used for CD singles:
item_width = 142;
item_height = 125;
item_depth = 7;
*/

/*
// Keep case <http://en.wikipedia.org/wiki/Keep_case>, used for DVDs:
item_width = 135;
item_height = 190;
item_depth = 15;
*/

// Items configuration
// Set how many items you want to be able to fit inside the box.
items = 8;

// Wall configuration
// Set how thick you want the wall (depends too much on aesthetics to auto-generate).
wall_thickness = 5;

module debug_item() {
    cube(size = [item_depth, item_height, item_width]);
}

module debug_items() {
    translate([-exterior_x / 2, -exterior_y / 2, 0]) {
        for( index = [0:items - 1] ) {
            translate ([index * item_depth + wall_thickness, wall_thickness, wall_thickness]) {
                debug_item();
            }
        }
    }
}

// Uncomment this if you want to see the items themselves
//# debug_items();


interior_x = items * item_depth;
interior_y = item_height;
interior_z = item_width;

exterior_x = interior_x + 2 * wall_thickness;
exterior_y = interior_y + 2 * wall_thickness;
exterior_z = interior_z + wall_thickness; // Smaller because of the opening

module top_bottom_plate() {
    cube(size = [exterior_x, wall_thickness, exterior_z]);
}

module top_bottom() {
    union() {
        top_bottom_plate();
        translate([0, interior_y + wall_thickness, 0]) {
            top_bottom_plate();
        }
    }
}

module left_right_plate() {
    cube(size = [wall_thickness, exterior_y, exterior_z]);
}

module left_right() {
    union() {
        left_right_plate();
        translate([interior_x + wall_thickness, 0, 0]) {
            left_right_plate();
        }
    }
}

module qrcode() {
    translate([-16, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 16, 0]) cube([0.99, 0.99, 1]);
    translate([2, 16, 0]) cube([0.99, 0.99, 1]);
    translate([3, 16, 0]) cube([0.99, 0.99, 1]);
    translate([5, 16, 0]) cube([0.99, 0.99, 1]);
    translate([6, 16, 0]) cube([0.99, 0.99, 1]);
    translate([7, 16, 0]) cube([0.99, 0.99, 1]);
    translate([10, 16, 0]) cube([0.99, 0.99, 1]);
    translate([11, 16, 0]) cube([0.99, 0.99, 1]);
    translate([12, 16, 0]) cube([0.99, 0.99, 1]);
    translate([13, 16, 0]) cube([0.99, 0.99, 1]);
    translate([14, 16, 0]) cube([0.99, 0.99, 1]);
    translate([15, 16, 0]) cube([0.99, 0.99, 1]);
    translate([16, 16, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 15, 0]) cube([0.99, 0.99, 1]);
    translate([1, 15, 0]) cube([0.99, 0.99, 1]);
    translate([4, 15, 0]) cube([0.99, 0.99, 1]);
    translate([5, 15, 0]) cube([0.99, 0.99, 1]);
    translate([6, 15, 0]) cube([0.99, 0.99, 1]);
    translate([7, 15, 0]) cube([0.99, 0.99, 1]);
    translate([10, 15, 0]) cube([0.99, 0.99, 1]);
    translate([16, 15, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 14, 0]) cube([0.99, 0.99, 1]);
    translate([0, 14, 0]) cube([0.99, 0.99, 1]);
    translate([1, 14, 0]) cube([0.99, 0.99, 1]);
    translate([3, 14, 0]) cube([0.99, 0.99, 1]);
    translate([6, 14, 0]) cube([0.99, 0.99, 1]);
    translate([7, 14, 0]) cube([0.99, 0.99, 1]);
    translate([8, 14, 0]) cube([0.99, 0.99, 1]);
    translate([10, 14, 0]) cube([0.99, 0.99, 1]);
    translate([12, 14, 0]) cube([0.99, 0.99, 1]);
    translate([13, 14, 0]) cube([0.99, 0.99, 1]);
    translate([14, 14, 0]) cube([0.99, 0.99, 1]);
    translate([16, 14, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 13, 0]) cube([0.99, 0.99, 1]);
    translate([1, 13, 0]) cube([0.99, 0.99, 1]);
    translate([3, 13, 0]) cube([0.99, 0.99, 1]);
    translate([5, 13, 0]) cube([0.99, 0.99, 1]);
    translate([8, 13, 0]) cube([0.99, 0.99, 1]);
    translate([10, 13, 0]) cube([0.99, 0.99, 1]);
    translate([12, 13, 0]) cube([0.99, 0.99, 1]);
    translate([13, 13, 0]) cube([0.99, 0.99, 1]);
    translate([14, 13, 0]) cube([0.99, 0.99, 1]);
    translate([16, 13, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 12, 0]) cube([0.99, 0.99, 1]);
    translate([3, 12, 0]) cube([0.99, 0.99, 1]);
    translate([5, 12, 0]) cube([0.99, 0.99, 1]);
    translate([7, 12, 0]) cube([0.99, 0.99, 1]);
    translate([8, 12, 0]) cube([0.99, 0.99, 1]);
    translate([10, 12, 0]) cube([0.99, 0.99, 1]);
    translate([12, 12, 0]) cube([0.99, 0.99, 1]);
    translate([13, 12, 0]) cube([0.99, 0.99, 1]);
    translate([14, 12, 0]) cube([0.99, 0.99, 1]);
    translate([16, 12, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 11, 0]) cube([0.99, 0.99, 1]);
    translate([0, 11, 0]) cube([0.99, 0.99, 1]);
    translate([2, 11, 0]) cube([0.99, 0.99, 1]);
    translate([4, 11, 0]) cube([0.99, 0.99, 1]);
    translate([5, 11, 0]) cube([0.99, 0.99, 1]);
    translate([10, 11, 0]) cube([0.99, 0.99, 1]);
    translate([16, 11, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 10, 0]) cube([0.99, 0.99, 1]);
    translate([0, 10, 0]) cube([0.99, 0.99, 1]);
    translate([2, 10, 0]) cube([0.99, 0.99, 1]);
    translate([4, 10, 0]) cube([0.99, 0.99, 1]);
    translate([6, 10, 0]) cube([0.99, 0.99, 1]);
    translate([8, 10, 0]) cube([0.99, 0.99, 1]);
    translate([10, 10, 0]) cube([0.99, 0.99, 1]);
    translate([11, 10, 0]) cube([0.99, 0.99, 1]);
    translate([12, 10, 0]) cube([0.99, 0.99, 1]);
    translate([13, 10, 0]) cube([0.99, 0.99, 1]);
    translate([14, 10, 0]) cube([0.99, 0.99, 1]);
    translate([15, 10, 0]) cube([0.99, 0.99, 1]);
    translate([16, 10, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 9, 0]) cube([0.99, 0.99, 1]);
    translate([0, 9, 0]) cube([0.99, 0.99, 1]);
    translate([1, 9, 0]) cube([0.99, 0.99, 1]);
    translate([2, 9, 0]) cube([0.99, 0.99, 1]);
    translate([3, 9, 0]) cube([0.99, 0.99, 1]);
    translate([4, 9, 0]) cube([0.99, 0.99, 1]);
    translate([5, 9, 0]) cube([0.99, 0.99, 1]);
    translate([7, 9, 0]) cube([0.99, 0.99, 1]);
    translate([8, 9, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-9, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 8, 0]) cube([0.99, 0.99, 1]);
    translate([2, 8, 0]) cube([0.99, 0.99, 1]);
    translate([3, 8, 0]) cube([0.99, 0.99, 1]);
    translate([4, 8, 0]) cube([0.99, 0.99, 1]);
    translate([5, 8, 0]) cube([0.99, 0.99, 1]);
    translate([7, 8, 0]) cube([0.99, 0.99, 1]);
    translate([8, 8, 0]) cube([0.99, 0.99, 1]);
    translate([9, 8, 0]) cube([0.99, 0.99, 1]);
    translate([10, 8, 0]) cube([0.99, 0.99, 1]);
    translate([11, 8, 0]) cube([0.99, 0.99, 1]);
    translate([13, 8, 0]) cube([0.99, 0.99, 1]);
    translate([14, 8, 0]) cube([0.99, 0.99, 1]);
    translate([16, 8, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 7, 0]) cube([0.99, 0.99, 1]);
    translate([4, 7, 0]) cube([0.99, 0.99, 1]);
    translate([8, 7, 0]) cube([0.99, 0.99, 1]);
    translate([10, 7, 0]) cube([0.99, 0.99, 1]);
    translate([15, 7, 0]) cube([0.99, 0.99, 1]);
    translate([16, 7, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 6, 0]) cube([0.99, 0.99, 1]);
    translate([0, 6, 0]) cube([0.99, 0.99, 1]);
    translate([1, 6, 0]) cube([0.99, 0.99, 1]);
    translate([3, 6, 0]) cube([0.99, 0.99, 1]);
    translate([4, 6, 0]) cube([0.99, 0.99, 1]);
    translate([5, 6, 0]) cube([0.99, 0.99, 1]);
    translate([6, 6, 0]) cube([0.99, 0.99, 1]);
    translate([8, 6, 0]) cube([0.99, 0.99, 1]);
    translate([11, 6, 0]) cube([0.99, 0.99, 1]);
    translate([12, 6, 0]) cube([0.99, 0.99, 1]);
    translate([14, 6, 0]) cube([0.99, 0.99, 1]);
    translate([16, 6, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-9, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 5, 0]) cube([0.99, 0.99, 1]);
    translate([1, 5, 0]) cube([0.99, 0.99, 1]);
    translate([4, 5, 0]) cube([0.99, 0.99, 1]);
    translate([8, 5, 0]) cube([0.99, 0.99, 1]);
    translate([9, 5, 0]) cube([0.99, 0.99, 1]);
    translate([12, 5, 0]) cube([0.99, 0.99, 1]);
    translate([13, 5, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-9, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 4, 0]) cube([0.99, 0.99, 1]);
    translate([9, 4, 0]) cube([0.99, 0.99, 1]);
    translate([10, 4, 0]) cube([0.99, 0.99, 1]);
    translate([13, 4, 0]) cube([0.99, 0.99, 1]);
    translate([15, 4, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 3, 0]) cube([0.99, 0.99, 1]);
    translate([1, 3, 0]) cube([0.99, 0.99, 1]);
    translate([6, 3, 0]) cube([0.99, 0.99, 1]);
    translate([10, 3, 0]) cube([0.99, 0.99, 1]);
    translate([12, 3, 0]) cube([0.99, 0.99, 1]);
    translate([14, 3, 0]) cube([0.99, 0.99, 1]);
    translate([15, 3, 0]) cube([0.99, 0.99, 1]);
    translate([16, 3, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-15, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-13, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-12, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-10, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-5, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-3, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-1, 2, 0]) cube([0.99, 0.99, 1]);
    translate([1, 2, 0]) cube([0.99, 0.99, 1]);
    translate([4, 2, 0]) cube([0.99, 0.99, 1]);
    translate([5, 2, 0]) cube([0.99, 0.99, 1]);
    translate([7, 2, 0]) cube([0.99, 0.99, 1]);
    translate([8, 2, 0]) cube([0.99, 0.99, 1]);
    translate([9, 2, 0]) cube([0.99, 0.99, 1]);
    translate([11, 2, 0]) cube([0.99, 0.99, 1]);
    translate([12, 2, 0]) cube([0.99, 0.99, 1]);
    translate([14, 2, 0]) cube([0.99, 0.99, 1]);
    translate([15, 2, 0]) cube([0.99, 0.99, 1]);
    translate([-16, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-14, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-11, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-8, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-7, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-6, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-4, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-2, 1, 0]) cube([0.99, 0.99, 1]);
    translate([0, 1, 0]) cube([0.99, 0.99, 1]);
    translate([1, 1, 0]) cube([0.99, 0.99, 1]);
    translate([3, 1, 0]) cube([0.99, 0.99, 1]);
    translate([5, 1, 0]) cube([0.99, 0.99, 1]);
    translate([7, 1, 0]) cube([0.99, 0.99, 1]);
    translate([8, 1, 0]) cube([0.99, 0.99, 1]);
    translate([10, 1, 0]) cube([0.99, 0.99, 1]);
    translate([11, 1, 0]) cube([0.99, 0.99, 1]);
    translate([12, 1, 0]) cube([0.99, 0.99, 1]);
    translate([13, 1, 0]) cube([0.99, 0.99, 1]);
    translate([15, 1, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-9, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -0, 0]) cube([0.99, 0.99, 1]);
    translate([0, -0, 0]) cube([0.99, 0.99, 1]);
    translate([3, -0, 0]) cube([0.99, 0.99, 1]);
    translate([5, -0, 0]) cube([0.99, 0.99, 1]);
    translate([6, -0, 0]) cube([0.99, 0.99, 1]);
    translate([10, -0, 0]) cube([0.99, 0.99, 1]);
    translate([12, -0, 0]) cube([0.99, 0.99, 1]);
    translate([15, -0, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -1, 0]) cube([0.99, 0.99, 1]);
    translate([5, -1, 0]) cube([0.99, 0.99, 1]);
    translate([7, -1, 0]) cube([0.99, 0.99, 1]);
    translate([8, -1, 0]) cube([0.99, 0.99, 1]);
    translate([11, -1, 0]) cube([0.99, 0.99, 1]);
    translate([13, -1, 0]) cube([0.99, 0.99, 1]);
    translate([15, -1, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-9, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -2, 0]) cube([0.99, 0.99, 1]);
    translate([0, -2, 0]) cube([0.99, 0.99, 1]);
    translate([1, -2, 0]) cube([0.99, 0.99, 1]);
    translate([2, -2, 0]) cube([0.99, 0.99, 1]);
    translate([6, -2, 0]) cube([0.99, 0.99, 1]);
    translate([8, -2, 0]) cube([0.99, 0.99, 1]);
    translate([9, -2, 0]) cube([0.99, 0.99, 1]);
    translate([10, -2, 0]) cube([0.99, 0.99, 1]);
    translate([11, -2, 0]) cube([0.99, 0.99, 1]);
    translate([14, -2, 0]) cube([0.99, 0.99, 1]);
    translate([15, -2, 0]) cube([0.99, 0.99, 1]);
    translate([16, -2, 0]) cube([0.99, 0.99, 1]);
    translate([-15, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -3, 0]) cube([0.99, 0.99, 1]);
    translate([0, -3, 0]) cube([0.99, 0.99, 1]);
    translate([2, -3, 0]) cube([0.99, 0.99, 1]);
    translate([4, -3, 0]) cube([0.99, 0.99, 1]);
    translate([5, -3, 0]) cube([0.99, 0.99, 1]);
    translate([8, -3, 0]) cube([0.99, 0.99, 1]);
    translate([9, -3, 0]) cube([0.99, 0.99, 1]);
    translate([10, -3, 0]) cube([0.99, 0.99, 1]);
    translate([15, -3, 0]) cube([0.99, 0.99, 1]);
    translate([16, -3, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -4, 0]) cube([0.99, 0.99, 1]);
    translate([0, -4, 0]) cube([0.99, 0.99, 1]);
    translate([1, -4, 0]) cube([0.99, 0.99, 1]);
    translate([6, -4, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -5, 0]) cube([0.99, 0.99, 1]);
    translate([0, -5, 0]) cube([0.99, 0.99, 1]);
    translate([1, -5, 0]) cube([0.99, 0.99, 1]);
    translate([2, -5, 0]) cube([0.99, 0.99, 1]);
    translate([3, -5, 0]) cube([0.99, 0.99, 1]);
    translate([4, -5, 0]) cube([0.99, 0.99, 1]);
    translate([5, -5, 0]) cube([0.99, 0.99, 1]);
    translate([6, -5, 0]) cube([0.99, 0.99, 1]);
    translate([10, -5, 0]) cube([0.99, 0.99, 1]);
    translate([14, -5, 0]) cube([0.99, 0.99, 1]);
    translate([15, -5, 0]) cube([0.99, 0.99, 1]);
    translate([16, -5, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-15, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -6, 0]) cube([0.99, 0.99, 1]);
    translate([4, -6, 0]) cube([0.99, 0.99, 1]);
    translate([5, -6, 0]) cube([0.99, 0.99, 1]);
    translate([6, -6, 0]) cube([0.99, 0.99, 1]);
    translate([8, -6, 0]) cube([0.99, 0.99, 1]);
    translate([10, -6, 0]) cube([0.99, 0.99, 1]);
    translate([13, -6, 0]) cube([0.99, 0.99, 1]);
    translate([16, -6, 0]) cube([0.99, 0.99, 1]);
    translate([-15, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-9, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -7, 0]) cube([0.99, 0.99, 1]);
    translate([0, -7, 0]) cube([0.99, 0.99, 1]);
    translate([5, -7, 0]) cube([0.99, 0.99, 1]);
    translate([6, -7, 0]) cube([0.99, 0.99, 1]);
    translate([8, -7, 0]) cube([0.99, 0.99, 1]);
    translate([11, -7, 0]) cube([0.99, 0.99, 1]);
    translate([12, -7, 0]) cube([0.99, 0.99, 1]);
    translate([13, -7, 0]) cube([0.99, 0.99, 1]);
    translate([16, -7, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-9, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -8, 0]) cube([0.99, 0.99, 1]);
    translate([1, -8, 0]) cube([0.99, 0.99, 1]);
    translate([3, -8, 0]) cube([0.99, 0.99, 1]);
    translate([4, -8, 0]) cube([0.99, 0.99, 1]);
    translate([5, -8, 0]) cube([0.99, 0.99, 1]);
    translate([8, -8, 0]) cube([0.99, 0.99, 1]);
    translate([9, -8, 0]) cube([0.99, 0.99, 1]);
    translate([10, -8, 0]) cube([0.99, 0.99, 1]);
    translate([11, -8, 0]) cube([0.99, 0.99, 1]);
    translate([12, -8, 0]) cube([0.99, 0.99, 1]);
    translate([13, -8, 0]) cube([0.99, 0.99, 1]);
    translate([15, -8, 0]) cube([0.99, 0.99, 1]);
    translate([16, -8, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -9, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -9, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -9, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -9, 0]) cube([0.99, 0.99, 1]);
    translate([3, -9, 0]) cube([0.99, 0.99, 1]);
    translate([4, -9, 0]) cube([0.99, 0.99, 1]);
    translate([6, -9, 0]) cube([0.99, 0.99, 1]);
    translate([7, -9, 0]) cube([0.99, 0.99, 1]);
    translate([8, -9, 0]) cube([0.99, 0.99, 1]);
    translate([12, -9, 0]) cube([0.99, 0.99, 1]);
    translate([13, -9, 0]) cube([0.99, 0.99, 1]);
    translate([16, -9, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-15, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-6, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-1, -10, 0]) cube([0.99, 0.99, 1]);
    translate([0, -10, 0]) cube([0.99, 0.99, 1]);
    translate([5, -10, 0]) cube([0.99, 0.99, 1]);
    translate([8, -10, 0]) cube([0.99, 0.99, 1]);
    translate([10, -10, 0]) cube([0.99, 0.99, 1]);
    translate([12, -10, 0]) cube([0.99, 0.99, 1]);
    translate([13, -10, 0]) cube([0.99, 0.99, 1]);
    translate([14, -10, 0]) cube([0.99, 0.99, 1]);
    translate([15, -10, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -11, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -11, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -11, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -11, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -11, 0]) cube([0.99, 0.99, 1]);
    translate([1, -11, 0]) cube([0.99, 0.99, 1]);
    translate([2, -11, 0]) cube([0.99, 0.99, 1]);
    translate([4, -11, 0]) cube([0.99, 0.99, 1]);
    translate([7, -11, 0]) cube([0.99, 0.99, 1]);
    translate([8, -11, 0]) cube([0.99, 0.99, 1]);
    translate([12, -11, 0]) cube([0.99, 0.99, 1]);
    translate([13, -11, 0]) cube([0.99, 0.99, 1]);
    translate([15, -11, 0]) cube([0.99, 0.99, 1]);
    translate([16, -11, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-3, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -12, 0]) cube([0.99, 0.99, 1]);
    translate([0, -12, 0]) cube([0.99, 0.99, 1]);
    translate([2, -12, 0]) cube([0.99, 0.99, 1]);
    translate([3, -12, 0]) cube([0.99, 0.99, 1]);
    translate([6, -12, 0]) cube([0.99, 0.99, 1]);
    translate([8, -12, 0]) cube([0.99, 0.99, 1]);
    translate([9, -12, 0]) cube([0.99, 0.99, 1]);
    translate([10, -12, 0]) cube([0.99, 0.99, 1]);
    translate([11, -12, 0]) cube([0.99, 0.99, 1]);
    translate([12, -12, 0]) cube([0.99, 0.99, 1]);
    translate([13, -12, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -13, 0]) cube([0.99, 0.99, 1]);
    translate([1, -13, 0]) cube([0.99, 0.99, 1]);
    translate([3, -13, 0]) cube([0.99, 0.99, 1]);
    translate([4, -13, 0]) cube([0.99, 0.99, 1]);
    translate([7, -13, 0]) cube([0.99, 0.99, 1]);
    translate([8, -13, 0]) cube([0.99, 0.99, 1]);
    translate([10, -13, 0]) cube([0.99, 0.99, 1]);
    translate([11, -13, 0]) cube([0.99, 0.99, 1]);
    translate([12, -13, 0]) cube([0.99, 0.99, 1]);
    translate([13, -13, 0]) cube([0.99, 0.99, 1]);
    translate([15, -13, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-5, -14, 0]) cube([0.99, 0.99, 1]);
    translate([0, -14, 0]) cube([0.99, 0.99, 1]);
    translate([1, -14, 0]) cube([0.99, 0.99, 1]);
    translate([2, -14, 0]) cube([0.99, 0.99, 1]);
    translate([6, -14, 0]) cube([0.99, 0.99, 1]);
    translate([7, -14, 0]) cube([0.99, 0.99, 1]);
    translate([8, -14, 0]) cube([0.99, 0.99, 1]);
    translate([9, -14, 0]) cube([0.99, 0.99, 1]);
    translate([12, -14, 0]) cube([0.99, 0.99, 1]);
    translate([14, -14, 0]) cube([0.99, 0.99, 1]);
    translate([16, -14, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -15, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -15, 0]) cube([0.99, 0.99, 1]);
    translate([-8, -15, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -15, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -15, 0]) cube([0.99, 0.99, 1]);
    translate([0, -15, 0]) cube([0.99, 0.99, 1]);
    translate([5, -15, 0]) cube([0.99, 0.99, 1]);
    translate([8, -15, 0]) cube([0.99, 0.99, 1]);
    translate([10, -15, 0]) cube([0.99, 0.99, 1]);
    translate([11, -15, 0]) cube([0.99, 0.99, 1]);
    translate([-16, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-15, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-14, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-13, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-12, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-11, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-10, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-7, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-4, -16, 0]) cube([0.99, 0.99, 1]);
    translate([-2, -16, 0]) cube([0.99, 0.99, 1]);
    translate([0, -16, 0]) cube([0.99, 0.99, 1]);
    translate([1, -16, 0]) cube([0.99, 0.99, 1]);
    translate([2, -16, 0]) cube([0.99, 0.99, 1]);
    translate([4, -16, 0]) cube([0.99, 0.99, 1]);
    translate([5, -16, 0]) cube([0.99, 0.99, 1]);
    translate([7, -16, 0]) cube([0.99, 0.99, 1]);
    translate([8, -16, 0]) cube([0.99, 0.99, 1]);
    translate([10, -16, 0]) cube([0.99, 0.99, 1]);
    translate([13, -16, 0]) cube([0.99, 0.99, 1]);
    translate([15, -16, 0]) cube([0.99, 0.99, 1]);
}

module back() {
    cube(size = [exterior_x, exterior_y, wall_thickness]);
}

module box() {
    difference() {
        translate([-exterior_x / 2, -exterior_y / 2, 0]) {
            union() {
                top_bottom();
                left_right();
                back();
            }
        }
        translate([0, 0, wall_thickness - 1]) {
            qrcode();
        }
    }
}

box();
