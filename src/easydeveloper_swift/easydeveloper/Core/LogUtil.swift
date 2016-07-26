//
//  LogUtil.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//  日志类
//

import Foundation

class LogUtil{
    static func e(tag:String?,info:String){
        if tag==nil{
            print("错误信息：\(info)")
            
        }else{
            print("\(tag)===错误信息：\(info)")
        }
        
    }
    
    static func i(tag:String?,info:String){
        if tag==nil{
            print("提示信息：\(info)")
        }else{
            print("\(tag)===提示信息：\(info)")
        }
        
    }
    
    static func w(tag:String?,info:String){
        if tag==nil{
            print("警告信息：\(info)")
        }else{
            print("\(tag)===警告信息：\(info)")
        }
        
    }
}
