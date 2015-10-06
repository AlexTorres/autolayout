//
//  ViewController.swift
//  autolayout
//
//  Created by John Alexandert Torres on 10/6/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topRedView: UIView!
    @IBOutlet weak var topYellowView: UIView!
    @IBOutlet weak var bottomView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        
        if UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft || UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight {
            
            var rect = topRedView.frame
            rect.size.width = 254
            rect.size.height = 130
            topRedView.frame = rect
            
            rect = topYellowView.frame
            rect.origin.x = 294
            rect.size.width = 254
            rect.size.height = 130
            topYellowView.frame = rect
            
            rect = bottomView.frame
            rect.origin.y = 170
            rect.size.width = 528
            rect.size.height = 130
            bottomView.frame = rect
            
        } else {
            
            var rect = topRedView.frame
            rect.size.width = 130
            rect.size.height = 254
            topRedView.frame = rect
            
            rect = topYellowView.frame
            rect.origin.x = 170
            rect.size.width = 130
            rect.size.height = 254
            topYellowView.frame = rect
            
            rect = bottomView.frame
            rect.origin.y = 295
            rect.size.width = 280
            rect.size.height = 254
            bottomView.frame = rect
        }
    }


}

