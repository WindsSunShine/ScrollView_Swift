//
//  ViewController.swift
//  ScrowllView_Swift
//
//  Created by 张建军 on 16/9/9.
//  Copyright © 2016年 张建军. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var scrollView = UIScrollView()
    
    let  SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
    
    let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 隐藏状态栏
        UIApplication.sharedApplication().statusBarHidden = true
        
        self.setupScrollView()
        
        
    }
    
    func setupScrollView() {
        
        self.scrollView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height)
        self.scrollView.pagingEnabled = true
        // 添加子控件
        
        let leftImageView = UIImageView(image: UIImage(named: "left"))
        leftImageView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
        self.scrollView .addSubview(leftImageView)
        
        let rightImageView = UIImageView(image:  UIImage(named: "right"))

        rightImageView.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
        self.scrollView.addSubview(rightImageView)
        
        self.view.addSubview(self.scrollView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

