//
//  ColorViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/27.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var textLeable: UILabel!
    @IBOutlet weak var blackSquare: UIView!
    
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
            self.blackSquare.backgroundColor = UIColor .whiteColor();
            self.textLeable.textColor = UIColor.blackColor();
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
