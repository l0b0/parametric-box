/*
Parametric box

Description: Print a box to hold a given number of items of a specified size.

Configuration: Uncomment one of the "Size configuration" sections below, and set the items variable to the desired amount. Please check the size of the resulting model before printing!

Copyright (C) 2010 Victor Engmark

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// Size configuration
// Uncomment one of the sections below or set your own

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

// Items configuration
// Set how many items you want to be able to fit inside the box
items = 8;

wall_thickness = 5;

interior_x = items * item_depth;
interior_y = item_height;
interior_z = item_width;

module debug_item() {
    cube(size = [item_depth, item_height, item_width]);
}

module debug_items() {
    for( index = [0:items - 1] ) {
        # translate ([index * item_depth, 0, 0]) debug_item();
    }
}
debug_items(); // Comment this if you don't want to see the items themselves


