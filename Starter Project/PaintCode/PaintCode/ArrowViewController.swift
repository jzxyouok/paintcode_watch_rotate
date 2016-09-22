//
//  ArrowViewController.swift
//  PaintCode
//
//  Created by Felipe Laso Marsetti on 1/15/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class ArrowViewController: UIViewController {
    @IBOutlet weak var stopWatchHanderView: StopwatchHand!
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.rotateStopWatchHand();
    }
    func rotateStopWatchHand(){
        UIView.animateWithDuration(2.0, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.stopWatchHanderView.transform=CGAffineTransformRotate(self.stopWatchHanderView.transform, CGFloat(M_PI_2))
        }) { (isComplete) in
            self.rotateStopWatchHand()
        }
    }

}
