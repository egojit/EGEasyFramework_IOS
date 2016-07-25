//
//  ViewController.swift
//  easyframework_swift
//
//  Created by egojit on 16/7/21.
//  Copyright © 2016年 egojit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        HttpHelper.Test()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

