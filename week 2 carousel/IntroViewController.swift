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
    @IBOutlet weak var photo2: UIImageView!
    @IBOutlet weak var photo3: UIImageView!
    @IBOutlet weak var photo4: UIImageView!
    @IBOutlet weak var photo5: UIImageView!
    @IBOutlet weak var photo6: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales: [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations: [Float] = [-10, -10, 10, 10 ,10, -10]
    


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
        var offset = Float(scrollView.contentOffset.y)
        print("scrolling content offset: \(offset)")
    

        
        var p1x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var p1y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        photo1.transform = CGAffineTransformMakeTranslation(CGFloat(p1x), CGFloat(p1y))
        photo1.transform = CGAffineTransformScale(photo1.transform, CGFloat(scale1), CGFloat(scale1))
        photo1.transform = CGAffineTransformRotate(photo1.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        
        var p2x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        var p2y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        photo2.transform = CGAffineTransformMakeTranslation(CGFloat(p2x), CGFloat(p2y))
        photo2.transform = CGAffineTransformScale(photo2.transform, CGFloat(scale2), CGFloat(scale2))
        photo2.transform = CGAffineTransformRotate(photo2.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
       
        var p3x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -36, r2Max: 0)
        var p3y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -345, r2Max: 0)
        var scale3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        photo3.transform = CGAffineTransformMakeTranslation(CGFloat(p3x), CGFloat(p3y))
        photo3.transform = CGAffineTransformScale(photo3.transform, CGFloat(scale3), CGFloat(scale3))
        photo3.transform = CGAffineTransformRotate(photo3.transform, CGFloat(Double(rotation3) * M_PI / 180))

        
        var p4x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        var p4y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -468, r2Max: 0)
        var scale4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        photo4.transform = CGAffineTransformMakeTranslation(CGFloat(p4x), CGFloat(p4y))
        photo4.transform = CGAffineTransformScale(photo4.transform, CGFloat(scale4), CGFloat(scale4))
        photo4.transform = CGAffineTransformRotate(photo4.transform, CGFloat(Double(rotation4) * M_PI / 180))

        
        var p5x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -180, r2Max: 0)
        var p5y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -430, r2Max: 0)
        var scale5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        photo5.transform = CGAffineTransformMakeTranslation(CGFloat(p5x), CGFloat(p5y))
        photo5.transform = CGAffineTransformScale(photo5.transform, CGFloat(scale5), CGFloat(scale5))
        photo5.transform = CGAffineTransformRotate(photo5.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        
        var p6x = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        var p6y = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -470, r2Max: 0)
        var scale6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        photo6.transform = CGAffineTransformMakeTranslation(CGFloat(p6x), CGFloat(p6y))
        photo6.transform = CGAffineTransformScale(photo6.transform, CGFloat(scale6), CGFloat(scale6))
        photo6.transform = CGAffineTransformRotate(photo6.transform, CGFloat(Double(rotation6) * M_PI / 180))
    
    }

}
