//
//  SettingViewController.swift
//  week 2 carousel
//
//  Created by Peiyu Liu on 11/1/15.
//  Copyright © 2015 Peiyu Liu. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = imageView.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButton(sender: AnyObject) {
        print("close button pressed")
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func signOutButton(sender: AnyObject) {
        print("sign out button pressed")
        performSegueWithIdentifier("signOutSegue", sender: self)
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
