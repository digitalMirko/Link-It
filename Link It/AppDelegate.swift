//
//  AppDelegate.swift
//  Link It
//
//  Created by Mirko Cukich on 11/1/16.
//  Copyright © 2016 Digital Mirko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        // Create Status Bar Item
        item = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        // Title for status bar item
        item?.title = "Link It!"
        // When someone clicks on name run this function
        item?.action = #selector(AppDelegate.linkIt)
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Link It!", action: #selector(AppDelegate.linkIt), keyEquivalent: "L"))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit), keyEquivalent: "Q"))
        
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

