/*
* Copyright (c) 2011-2018 Your Organization (https://yourwebsite.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Author <bunnyapocalypse@protonmail.com>
*/
public class MyApp : Gtk.Application {
    
    public MyApp () {
        Object (
            application_id: "com.github.bunnyapocalypse.valapractice",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        var label = new Gtk.Label ("Hello Again World!");
        main_window.add(label);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello Again :)";
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}