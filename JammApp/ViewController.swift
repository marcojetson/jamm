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
    
    @IBOutlet var receiveConfirmationSuccess: UIButton!
    
    @IBOutlet var receiveConfirmationError: UIButton!
    
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
        notification.alertBody = "Marco’s hungry! You JAMMed with bikes. Are you up to it?"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.category = "invitationCategory"
        

        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    
    @IBAction func receiveConfirmationSuccessTouch(sender: UIButton) {
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Lucky you, 2 JAMMers confirmed for 13:40"
        notification.soundName = UILocalNotificationDefaultSoundName
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    
    @IBAction func receiveConfirmationErrorTouch(sender: UIButton) {
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Sometimes you need alone time, enjoy!"
        notification.soundName = UILocalNotificationDefaultSoundName
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
}

