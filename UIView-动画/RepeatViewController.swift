//
//  RepeatViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/28.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var brownSquare: UIView!
    
    @IBOutlet weak var purpleSquare: UIView!
    
    
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
            //将第一个方块从左到右
        self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
        })
        UIView.animateWithDuration(1, delay: 0.5, options: .Repeat, animations: {
            //将第二个方块从左到右 并且重复执行  时长1秒 延迟0，5秒 设置方式 重复执行
            self.brownSquare.center.x = self.view.bounds.width - self.brownSquare.center.x
        }, completion: nil);
        UIView.animateWithDuration(1, delay: 1, options:[.Repeat,.Autoreverse], animations: {
            //将第三个方块从左到右并从右到左反复执行 时长1 延迟0.5
            self.purpleSquare.center.x = self.view.bounds.width - self.purpleSquare.center.x
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
