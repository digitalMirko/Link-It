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
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    // Will do all the work
    func linkIt() {
        print("Testing 123...")
    }


}

