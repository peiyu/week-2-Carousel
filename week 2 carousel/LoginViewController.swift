//
//  LoginViewController.swift
//  week 2 carousel
//
//  Created by Peiyu Liu on 11/1/15.
//  Copyright © 2015 Peiyu Liu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

        
    

    
//questions: why emailField == pei doesnt work; how to set the view height


    override func viewDidLoad() {
        super.viewDidLoad()

    loginScrollView.contentSize = CGSize(width: 320, height: 600)


    
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        // Move the button up above keyboard
        buttonParentView.transform = CGAffineTransformMakeTranslation(0, -120)
        // Calculate the maximum scrollview content Offset y
        let maxContentOffsetY = loginScrollView.contentSize.height - loginScrollView.frame.size.height
        // Scroll the scrollview up to the maximum contentOffset
        loginScrollView.contentOffset.y = maxContentOffsetY
        // Enable scrolling while keyboard is shown
        loginScrollView.scrollEnabled = true
    }
    
    
    func keyboardWillHide(notification: NSNotification!) {
    }

    @IBAction func didPressLogin(sender: UIButton) {
    
        if emailField.text == "pei" && passwordField.text == "111" {
            print("right")
            
            self.activityIndicator.startAnimating()
                delay(2, closure: { () -> () in
                // Stop animating the activity indicator.
                self.activityIndicator.stopAnimating()
                
                self.performSegueWithIdentifier("loginSegue", sender: self)
                
            })
            
        } else if emailField.text!.isEmpty || passwordField.text!.isEmpty{

            let alertController = UIAlertController(title: "Missing Information", message: "Please complete before login", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true){
                
            }
            
        } else{
            print("wrong")
            
            self.activityIndicator.startAnimating()
            delay(2, closure: { () -> () in
                // Stop animating the activity indicator.
                self.activityIndicator.stopAnimating()
                
                let wrongInformation = UIAlertController(title: "Wrong information", message: "Either username or password is wrong", preferredStyle: .Alert)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                wrongInformation.addAction(OKAction)
                
                self.presentViewController(wrongInformation, animated: true){
                    
                }
                
            })
        }
    }
    @IBAction func backButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    
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
