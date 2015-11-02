//
//  TutorialViewController.swift
//  week 2 carousel
//
//  Created by Peiyu Liu on 11/1/15.
//  Copyright © 2015 Peiyu Liu. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate{
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStarted: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.frame = CGRectMake(0, 0, 320, 568)
        getStarted.alpha = 0
        
//        func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
//
//
//            // Get the current page based on the scroll offset
//            let page : Int = Int(round(scrollView.contentOffset.x / 320))
//            
//            // Set the curent page, so the dots will update
//            pageControl.currentPage = page
//        }

     

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            
            let currentPage = Int(round(scrollView.contentOffset.x / 320))
            pageControl.currentPage = currentPage
            
            let duration = 0.2
            if currentPage == 3 {
                print ("yeah1")
                UIView.animateWithDuration(duration, animations: {
                    self.pageControl.alpha = 0
                    self.getStarted.alpha = 1
                })
            } else {
                print ("yeah2")
                UIView.animateWithDuration(duration / 2, animations: {
                    self.pageControl.alpha = 1
                    self.getStarted.alpha = 0
                })
            }
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


