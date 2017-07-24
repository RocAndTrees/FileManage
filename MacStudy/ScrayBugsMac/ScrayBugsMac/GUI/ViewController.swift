//
//  ViewController.swift
//  ScrayBugsMac
//
//  Created by pxl on 2017/7/21.
//  Copyright © 2017年 pxl. All rights reserved.
//

import Cocoa

class ViewController: NSViewController,NSTabViewDelegate, NSTableViewDataSource {
    var bugs:NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let bug1 = ScaryBugsDoc("Potato Bug", 4, NSImage(named: "potatoBugThumb.jpg")!, NSImage(named: "potatoBug.jpg")!)
        let bug2 = ScaryBugsDoc("House Centipede", 3, NSImage(named: "centipedeThumb.jpg")!, NSImage(named: "centipede.jpg")!)
        let bug3 = ScaryBugsDoc("Wolf Spider", 5, NSImage(named: "wolfSpiderThumb.jpg")!, NSImage(named: "wolfSpider.jpg")!)
        let bug4 = ScaryBugsDoc("Lady Bug", 1, NSImage(named: "ladybugThumb.jpg")!, NSImage(named: "ladybug.jpg")!)
        
        bugs = NSMutableArray(objects: bug1, bug2, bug3, bug4)
        
    }

    func numberOfRows(in tableView: NSTableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        let cellView: NSTableCellView = tableView.make(withIdentifier: (tableColumn?.identifier)!, owner: self) as! NSTableCellView
        
        if (tableColumn?.identifier.isEqual("BugColumn"))!{
//            let bugDoc:ScaryBugsDoc = bugs!.object(at: row) as! ScaryBugsDoc
            cellView.imageView?.image = #imageLiteral(resourceName: "potatoBug.jpg")
            
//                bugDoc.thumbImage
            cellView.textField?.stringValue = "25"
//                (bugDoc.data?.title)! as String
            return cellView
        }
        
        return cellView
        
    }
    
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    
    
    

}

