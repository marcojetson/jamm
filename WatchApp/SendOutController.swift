//
//  SendOutController.swift
//  JammApp
//
//  Created by Marco Palmieri on 03/09/16.
//  Copyright © 2016 Marco Palmieri. All rights reserved.
//

import WatchKit
import Foundation


class SendOutController: WKInterfaceController {
    @IBOutlet var progress: WKInterfaceGroup!
    
    var step = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        NSTimer.scheduledTimerWithTimeInterval(0.75, target: self, selector: #selector(SendOutController.update), userInfo: nil, repeats: true)

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func update() {
        if (step <= 2) {
            progress.setBackgroundImageNamed("progress" + String(step))
            step += 1
        }
    }
}
