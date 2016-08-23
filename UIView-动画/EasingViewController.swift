//
//  EasingViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/28.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var brownSquare: UIView!
    @IBOutlet weak var pinkSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1, animations: {
                //没有做任何设定 一个线性的移动
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
            })
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseIn, animations:{
            //持续加速  EaseIn 慢->快
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            } , completion: nil);
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseOut, animations: {
            //一个先快后慢的动画  EaseOut  快->慢
            self.brownSquare.center.x = self.view.bounds.width - self.brownSquare.center.x
            }, completion: nil);
        UIView.animateWithDuration(1, delay: 0, options:.CurveEaseInOut, animations: {
            //先加速后减速最后结束    EaseInOut 慢->快->慢->停止
            self.pinkSquare.center.x = self.view.bounds.width - self.pinkSquare.center.x
            }, completion: nil)
    
    
    
    
    
    
    
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
