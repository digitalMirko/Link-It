//
//  AppDelegate.swift
//  Link It
//
//  Created by Mirko Cukich on 11/1/16.
//  Copyright © 2016 Digital Mirko. All rights reserved.
//
// icon used color black, size 32 pixels, png format
// icon credit: Eleonor Wang from flaticon.com
// <div>Icons made by <a href="http://www.flaticon.com/authors/eleonor-wang" title="Eleonor Wang">Eleonor Wang</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        // Create Status Bar Item
        item = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        // Title for status bar item
//        item?.title = "Link It!"
        // When someone clicks on name run this function
//        item?.action = #selector(AppDelegate.linkIt)
        
        // loading icon graphic
        item?.image = NSImage(named: "link")
        
        
        let menu = NSMenu()
        // empty keyEquivalent makes app look cleaner instead of short cuts being shown
        menu.addItem(NSMenuItem(title: "Link It!", action: #selector(AppDelegate.linkIt), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit), keyEquivalent: ""))
        
        // assign into status bar
        item?.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    // Creates the usable link option
    func linkIt() {
        print("Testing 123...")
    }

    // Quits out of application
    func quit(){
        NSApplication.shared().terminate(self)
    }

}

