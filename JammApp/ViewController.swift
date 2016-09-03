//
//  ViewController.swift
//  JammApp
//
//  Created by Marco Palmieri on 03/09/16.
//  Copyright © 2016 Marco Palmieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var receiveInvitation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func receiveInvitationTouch(sender: UIButton) {
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Hey you! Yeah you! Swipe to unlock!"
        notification.alertAction = "be awesome!"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["CustomField1": "w00t"]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
}

