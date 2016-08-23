//
//  LoginViewController.swift
//  UIView-动画
//
//  Created by Code-Zhu on 16/6/29.
//  Copyright © 2016年 Zzzzzhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    @IBOutlet weak var logn: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var logIn: UIButton!
    //custon
    let spinner = UIActivityIndicatorView(activityIndicatorStyle:.WhiteLarge)
    var loginPosition = CGPoint.zero
    //初始化报错信息
    let warningMessage = UIImageView(image: UIImage(named:"Warning"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //将所有的bubble初始化为0
        self.bubble1.transform = CGAffineTransformMakeScale(0.0, 0.0);
        self.bubble2.transform = CGAffineTransformMakeScale(0.0, 0.0);
        self.bubble3.transform = CGAffineTransformMakeScale(0.0, 0.0);
        self.bubble4.transform = CGAffineTransformMakeScale(0.0, 0.0);
        self.bubble5.transform = CGAffineTransformMakeScale(0.0, 0.0);

        //将logo移除屏幕以及dot移出屏幕
        self.logn.center.x = self.logn.center.x - self.view.bounds.width
        self.dot.center.x = self.dot.center.x - self.view.bounds.width/2
        
        //将textfield移出屏幕
        self.userName.center.x = self.userName.center.x - self.view.bounds.width
        self.passWord.center.x = self.passWord.center.x - self.view.bounds.width
        
        //将login移出屏幕
        self.loginPosition = self.logIn.center
        self.logIn.center.x = self.logIn.center.x - self.view.bounds.width
       //隐藏warningMessage
        self.view.addSubview(self.warningMessage)
        self.warningMessage.hidden = true
        self.warningMessage.center = self.loginPosition
        
        
        
       
        //username输入框和图标之间有padding
        let userpaddingView = UIView(frame: CGRectMake(0, 0, 44, self.userName.frame.height))
        self.userName.leftView = userpaddingView
        self.userName.leftViewMode = UITextFieldViewMode.Always

        //password同上
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.passWord.frame.height))
        self.passWord.leftView = passwordPaddingView
        self.passWord.leftViewMode = UITextFieldViewMode.Always
        
        //将user图标放到textfield
        let userImageView = UIImageView(image: UIImage(named: "User"));
        //设置user的位置
        userImageView.frame.origin = CGPoint(x:13,y: 10);
        self.userName.addSubview(userImageView);
        
        let passwordImageView = UIImageView(image:UIImage(named: "Key"));
        passwordImageView.frame.origin = CGPoint(x:12,y: 9);
        self.passWord.addSubview(passwordImageView);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //制作bubble弹出 用spring效果更好 同时分组设置dealy
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1);
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1);
                        }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.bubble2.transform = CGAffineTransformMakeScale(1, 1);
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1);
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.bubble5.transform = CGAffineTransformMakeScale(1, 1);
            }, completion: nil)
        
        //通过spring弹出logo和dot
        UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: [], animations: {
            self.logn.center.x = self.logn.center.x + self.view.bounds.width
            }, completion: nil)
    
        UIView.animateWithDuration(1.5, delay: 0.4, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: [], animations: {self.dot.center.x = self.dot.center.x + self.view.bounds.width/2
            }, completion: nil)
        
        //将textfield出现在屏幕内
        UIView.animateWithDuration(0.4, delay: 0.5, options: .CurveEaseOut, animations: {
            self.userName.center.x = self.userName.center.x + self.view.bounds.width
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.6, options: .CurveEaseOut, animations: {
            self.passWord.center.x = self.passWord.center.x + self.view.bounds.width
            }, completion: nil)
    
        //显示login
        UIView.animateWithDuration(0.4, delay: 0.7, options: .CurveEaseOut, animations: {
            self.logIn.center.x = self.logIn.center.x + self.view.bounds.width
            }, completion: nil)
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        //添加spinner并设置位置
        self.logIn.addSubview(spinner)
        self.spinner.frame.origin = CGPoint(x: 12,y: 12)
        spinner.startAnimating()
        
        UIView.transitionWithView(self.warningMessage, duration: 0.3, options: .TransitionFlipFromBottom, animations: {
            self.warningMessage.hidden = true
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, animations: {self.logIn.center = self.loginPosition})
        //设置动画
        self.logIn.center = self.loginPosition
        self.logIn.center.x = self.logIn.center.x - 30
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [], animations: {
            self.logIn.center.x = self.logIn.center.x + 30
            }, completion: {_ in
                UIView.animateWithDuration(0.3, animations: {
                self.logIn.center.y = self.logIn.center.y + 80
                    self.spinner.removeFromSuperview()
                    },completion: { _ in
                        UIView.transitionWithView(self.warningMessage, duration: 0.3, options:[.TransitionFlipFromTop,.CurveEaseOut],animations: {
                            self.warningMessage.hidden = false
                            }, completion: nil)
                
                })
                
                
        
        })
    }
    //点击隐藏键盘
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        [self.view .endEditing(true)];
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
