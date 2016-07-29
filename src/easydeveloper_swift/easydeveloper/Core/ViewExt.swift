//
//  ViewExt.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/29.
//  Copyright © 2016年 egojit. All rights reserved.
//  UIView 扩张
//

import Foundation

extension UIView{
    
//    //设置X
//    func setX(x:CGFloat){
//        var frame = self.frame;
//        frame.origin.x = x;
//        self.frame = frame;
//    }
    
    //X属性
    var X:CGFloat{
        get{
            return self.frame.origin.x;
        }
        set(value){
            var frame = self.frame;
            frame.origin.x = value;
            self.frame = frame;
        }
    }
    
    
    //Y属性
    var Y:CGFloat{
        get{
            return self.frame.origin.y;
        }
        set(value){
            var frame = self.frame;
            frame.origin.y = value;
            self.frame = frame;
        }
    }
    
    
    //width属性
    var width:CGFloat{
        get{
            return self.frame.width;
        }
        set(value){
            var frame = self.frame;
            frame.size.width = value;
            self.frame = frame;
        }
    }
    
    //height属性
    var height:CGFloat{
        get{
            return self.frame.height;
        }
        set(value){
            var frame = self.frame;
            frame.size.height = value;
            self.frame = frame;
        }
    }

    
    //size属性
    var size:CGSize{
        get{
            return self.frame.size;
        }
        set(value){
            var frame = self.frame;
            frame.size = value;
            self.frame = frame;
        }
    }
    
    
    //origin属性
    var origin:CGPoint{
        get{
            return self.frame.origin;
        }
        set(value){
            var frame = self.frame;
            frame.origin = value;
            self.frame = frame;
        }
    }
    
    
}