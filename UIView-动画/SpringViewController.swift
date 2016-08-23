//
//  SpringViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/28.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        UIView.animateWithDuration(1, animations: {
        self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
        })
        UIView.animateWithDuration(5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.5, options: [], animations: {
            //弹簧动画 usingSpringWithDamping == 阻尼 阻尼和弹力成反比         
            //initiaSpringVelocity==速度 速度越快效果越夸张 速度和呈现效果成正比
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
            }, completion: nil);
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: [], animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            }, completion: nil);
        
    
    
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
