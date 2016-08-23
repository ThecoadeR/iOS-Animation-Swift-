//
//  ColorViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/27.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var blackSquare: UIView!
    
    @IBOutlet weak var textLabel: UILabel!
    
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
            self.blackSquare.backgroundColor = UIColor .blueColor();
            self.textLabel.textColor = UIColor.blackColor();
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
