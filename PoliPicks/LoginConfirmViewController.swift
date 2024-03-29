//
//  LoginConfirmViewController.swift
//  PoliPicks
//
//  Created by Grace Qi on 3/16/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class LoginConfirmViewController: UIViewController {
    
    @IBOutlet weak var confirmationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogin(sender: UIButton) {
        if confirmationTextField.text == "12345" {
            self.performSegueWithIdentifier("loginConfirmSegue", sender: self)
        } else {
            let alertController = UIAlertController(title: "Invalid Confirmation Number", message: "Please enter a valid confirmation number.", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func didPressDidntGetCode(sender: AnyObject) {
        let alertController = UIAlertController(title: "Didn't get code", message: "Code resent. Please check your text message.", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(OKAction)
        self.presentViewController(alertController, animated: true, completion: nil)
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
