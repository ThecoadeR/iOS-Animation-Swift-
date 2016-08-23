//
//  RotationViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/27.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func spin(){
        UIView.animateWithDuration(1, delay: 0, options:.CurveLinear ,animations: {
            
            self.wheel.transform = CGAffineTransformRotate(self.wheel.transform, CGFloat(M_PI))
        })  {(finished)->Void in  //当动作结束以后 返回调用函数
        self.spin()
        }
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        UIView.animateWithDuration(1, animations: {
        //做圆周运动 需要自己写一个函数 并且调用.wheel.transform = CGAffineTransformMakeRotation(CGFloat(M_PI));
        self.spin()
        })
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
