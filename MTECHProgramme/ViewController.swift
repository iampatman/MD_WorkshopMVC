//
//  ViewController.swift
//  Support
//
//  Created by Nguyen Bui An Trung on 14/4/16.
//  Copyright © 2016 Nguyen Bui An Trung. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBAction func emailSupport(){
        let emailViewController: MFMailComposeViewController = MFMailComposeViewController()
        emailViewController.mailComposeDelegate = self
        emailViewController.setSubject("Support Required")
        emailViewController.setMessageBody("Please advise!", isHTML: false)
        self.presentViewController(emailViewController, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func callSuport(){
        UIApplication.sharedApplication().openURL(NSURL(string: "tel:81330082")!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

