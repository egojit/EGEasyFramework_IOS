//
//  HttpHelper.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/21.
//  Copyright © 2016年 egojit. All rights reserved.
//

import Foundation

class HttpHelper {
    
    static let manager = AFHTTPRequestOperationManager();
    
    
    
    static func post(url:String,parameters:Dictionary<String,String>?,onStart:()->(),onSuccess:(String)->(),onFaild:(String)->()){
//        manager.responseSerializer = AFHTTPResponseSerializer.ser;
        onStart();
        var strType = Set<String>()
        strType.insert("text/html")
         strType.insert("text/json")
        strType.insert("text/javascript")
        strType.insert("text/plain")
        manager.responseSerializer.acceptableContentTypes=strType
        let args = Utils.getFormatUrlArgument(parameters)
        LogUtil.i(nil, info: "\(url)?\(args)")
        
        manager.POST(url, parameters: parameters, success:{  (operation: AFHTTPRequestOperation!,
            result: AnyObject!) in
            
                        print(result);
            onSuccess(result.description);
            //self.xxx操作
            //错误的相关操作
            }, failure:{  (operation: AFHTTPRequestOperation!,
            error: NSError!) in
            onFaild(error.localizedDescription);
            //self.xxx操作
            //错误的相关操作
        })
        
        
    }
    
//    static func Test(){
//        let dic:Dictionary<String,String> = ["name":"egojit","age":"12"];
//        post("http://10.10.10.237:8080/SPSP-api/common/v1/tfCoordinate/thCategory", parameters: dic, onStart: onStart, onSuccess: Success ,onFaild: Faild)
//        
//    }
//   
//    
////    
//    static func onStart(){
//        print("======start")
//       
//    }
//
////
//    static func Success(result:String){
//        print(result)
//    }
////
//    static func Faild(error:String){
//        print(error);
//    }

    
}
