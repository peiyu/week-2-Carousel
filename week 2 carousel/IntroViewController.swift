//
//  IntroViewController.swift
//  week 2 carousel
//
//  Created by Peiyu Liu on 11/1/15.
//  Copyright © 2015 Peiyu Liu. All rights reserved.
//

//question: when i set the height to be freeform, cannot drag to the bottom
import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var photo1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.image!.size

        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("scrolling")
//        photo1.transform = CGAffineTransformRotate(view.transform, CGFloat(45 * M_PI / 180))
        // This method is called as the user scrolls
    }

}
