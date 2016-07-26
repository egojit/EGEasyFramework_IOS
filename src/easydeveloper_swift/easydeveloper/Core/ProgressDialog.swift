//
//  ProgressDialog.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//

import Foundation

class ProgressDialog: MBProgressHUD {
    
//    /**
//    *  显示信息
//    *
//    *  @param text 信息内容
//    *  @param icon 图标
//    *  @param view 显示的视图
//    */
//    static func show(text:String,icon:String,var view:UIView?)
//    {
//        if view == nil{
//            let obj = UIApplication.sharedApplication().windows.last
//            view = obj! as UIView
//        }
//        // 快速显示一个提示信息
//        let hud = MBProgressHUD .showHUDAddedTo(view, animated: true);
//        hud.labelText = text;
//        // 设置图片
//        let img = UIImage(named: "MBProgressHUD.bundle/\(icon)");
//        
//        hud.customView = UIImageView(image: img);
//        
//        // 再设置模式
//        hud.mode = MBProgressHUDMode.CustomView;
//
//        // 隐藏时候从父控件中移除
//        hud.removeFromSuperViewOnHide = true;
//        // 1秒之后再消失
//        hud.hide(true, afterDelay: 0.7)
//    }
    
    
    /**
    *  显示成功信息
    *
    *  @param success 信息内容
    */
    static func showSuccess(success:String)
    {
        showSuccess(success, view: nil)
            //[self showSuccess:success toView:nil];
    }
    
    /**
    *  显示成功信息
    *
    *  @param success 信息内容
    *  @param view    显示信息的视图
    */
    static func showSuccess(success:String,view:UIView?)
    {
        
        show(success,icon: "success.png",view: view)
        //    [self show:success icon:@"success.png" view:view];
    }
    
    /**
    *  显示错误信息
    *
    */
    static func showError(error:String)
    {
        showError(error,view:nil);
    }
    
    /**
    *  显示错误信息
    *
    *  @param error 错误信息内容
    *  @param view  需要显示信息的视图
    */
    static func showError(error:String,view:UIView?){
        show(error,icon: "error.png",view: view)
    }

    
    /**
    *  显示错误信息
    *
    *  @param message 信息内容
    *
    *  @return 直接返回一个MBProgressHUD，需要手动关闭
    */
    static func showMessage(message:String)->MBProgressHUD
    {
       return showMessage(message,toView:nil);
    }
    
//    /**
//    *  显示一些信息
//    *
//    *  @param message 信息内容
//    *  @param view    需要显示信息的视图
//    *
//    *  @return 直接返回一个MBProgressHUD，需要手动关闭
//    */
//    static func showMessage(message:String,var view:UIView?)->MBProgressHUD{
//        if view == nil{
//            let obj = UIApplication.sharedApplication().windows.last
//            view = obj! as UIView
//        }
//        // 快速显示一个提示信息
//        let hud = MBProgressHUD.showHUDAddedTo(view, animated: true)
//        hud.labelText = message;
//        // 隐藏时候从父控件中移除
//        hud.removeFromSuperViewOnHide = true
//        // YES代表需要蒙版效果
//        hud.dimBackground = true
//        return hud;
//    }
    
    /**
    *  手动关闭MBProgressHUD
    */
    static func hideHUD()
    {
        hideHUDForView(nil);
    }
    
    /**
    *  手动关闭MBProgressHUD
    *
    *  @param view    显示MBProgressHUD的视图
    */
//    static func    hideHUDForView(var view:UIView?)
//    {
//        if view == nil{
//            let obj = UIApplication.sharedApplication().windows.last;
//            view = obj! as UIView
//        }
//        self.hideHUDForView(view, animated: true)
//    }

    
    
}
