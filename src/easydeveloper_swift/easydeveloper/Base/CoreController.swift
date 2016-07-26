//
//  BaseController.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//基础类，所有控制器继承找个类
//

import Foundation

class CoreController: UIViewController {
    
    func showSuccessMessage(info:String){
        ProgressDialog.showSuccess(info)
    }
    
    func showErrorsMessage(info:String){
        ProgressDialog.showError(info)
    }
    
    internal func showLoding(info:String){
        ProgressDialog.showMessage(info)
    }
    
    func hideLoding(){
        ProgressDialog.hideHUD()
    }
    
    override func viewDidLoad() {
        LogUtil.i(nil, info: "viewDidLoad执行")
        
    }
    
}
