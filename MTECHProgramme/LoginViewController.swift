//
//  LoginViewController.swift
//  Login
//
//  Created by Nguyen Bui An Trung on 14/4/16.
//  Copyright © 2016 Nguyen Bui An Trung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func login(sender: AnyObject) {
        userID.resignFirstResponder()
        password.resignFirstResponder()
        let login:LoginModel = LoginModel()
        if (isStringEmmpty(userID.text!) || isStringEmmpty(password.text!)){
            printMessage("Username and password can not be empty")
            return
        }
        let result:Bool = login.verifyUserIDandPassword(userID.text!, password: password.text!)
        if (!result){
            printMessage("The username and password are incorrect")
            return
        } else {
            //printMessage("Login succeeded")
            performSegueWithIdentifier("doLogin", sender: self)
        }
    
    }
    
    
    func isStringEmmpty(string: String) -> Bool {
        return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()) == ""
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "doLogin"){
                //do sth to pass by the username parameter
            print("segue to next scene")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        userID.resignFirstResponder()
        password.resignFirstResponder()
        return true
    }
    func printMessage(message: String){
        let alertPopUp: UIAlertController = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { action -> Void in }
        alertPopUp.addAction(cancelAction)
        self.presentViewController(alertPopUp, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        userID.delegate = self
        password.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
