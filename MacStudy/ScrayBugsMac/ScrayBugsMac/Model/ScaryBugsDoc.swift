//
//  ScaryBugsDoc.swift
//  ScrayBugsMac
//
//  Created by pxl on 2017/7/21.
//  Copyright © 2017年 pxl. All rights reserved.
//

import Cocoa

class ScaryBugsDoc: NSObject {
    var data:ScaryBugData? = nil
    var thumbImage:NSImage? = nil
    var fullImage:NSImage? = nil
    
    init(_ title:NSString, _ rating:Float,_ thumbImage:NSImage, _ fullImage:NSImage) {
        super.init()
        self.data = ScaryBugData(title, rating)
        self.thumbImage = thumbImage
        self.fullImage = fullImage
    }
    
    
    
    
}
