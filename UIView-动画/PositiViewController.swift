//
//  PositiViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/27.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class PositiViewController: UIViewController {
 
    @IBOutlet weak var blackSquare: UIView!
    @IBOutlet weak var brownSquare: UIView!
    @IBOutlet weak var orangeSquare: UIView!
    
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
            self.blackSquare.center.x = self.view.bounds.width - self.blackSquare.center.x;



        })
    }

  

}
