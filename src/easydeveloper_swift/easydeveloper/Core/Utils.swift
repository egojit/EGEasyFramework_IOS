//
//  Utils.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//

import Foundation

class Utils {
    
    static func getFormatUrlArgument(argument:Dictionary<String,String>!)->String{

        var str="";
        for (key,value) in argument {
            
            str+="\(key)=\(value)&";
        }
        let index = str.endIndex.advancedBy(-1); //swift 2.0+
        return str.substringToIndex(index);
        
    }
}
