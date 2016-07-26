//
//  ViewController.swift
//  easyframework_swift
//
//  Created by egojit on 16/7/21.
//  Copyright © 2016年 egojit. All rights reserved.
//

import UIKit

class ViewController: BaseTableViewContrller {
    
    
    let list:[Dictionary<String,AnyObject>] = [["name":"gaolu","age":11],["name":"gaolu","age":11]]
    
    override func viewDidLoad() {
        super.viewDidLoad("\(object_getClassName(self))")
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.setData(list)
        
        LogUtil.i(nil, info: "\(object_getClassName(self))")
        Test()
    }

    //实现了数据源协议
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellId,forIndexPath: indexPath) as UITableViewCell
        if cell == nil{
            cell=UITableViewCell(frame: CGRect(x: 0, y: 0, width: view!.frame.width, height: 50))
        }
        let row=indexPath.row as Int
        let dic:Dictionary<String,AnyObject>=list[row];
        cell!.textLabel?.text = dic["name"] as? String;
        return cell!;
    }
    
    
    func Test(){
        let dic:Dictionary<String,String> = ["name":"egojit","age":"12"];
//        self.showSuccessMessage("开始！");
       self.showLoding("加载中……")
        
        HttpHelper.post("http://10.10.10.237:8080/SPSP-api/common/v1/tfCoordinate/thCategory", parameters: dic, onStart: onStart, onSuccess: Success ,onFaild: Faild)
        
    }
    
    
    //
    func onStart(){
        print("======start")
        
       
        
    }
    
    //
    func Success(result:String){
        print(result)
//         self.showSuccessMessage("成功！");
//         self.showLoding("加载中……")
    }
    //
    func Faild(error:String){
        print(error);
//         self.showSuccessMessage("失败！");
    }


}

