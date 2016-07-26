//
//  ViewController.swift
//  easyframework_swift
//
//  Created by egojit on 16/7/21.
//  Copyright © 2016年 egojit. All rights reserved.
//

import UIKit

class ViewController: BaseTableViewContrller {
    
    
    let list:[Dictionary<String,AnyObject>] = [["name":"gaolu","age":11],["name":"egojit","age":11]]
    
    override func viewDidLoad() {
        super.viewDidLoad("ViewController")
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
          Test()
        self.setData(list)
        LogUtil.i(nil, info: "\(object_getClassName(self))")
      
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
        
        
        HttpHelper.post("http://10.10.10.237:8080/SPSP-api/common/v1/tfCoordinate/thCategory", parameters: dic, onStart: onStart, onSuccess: Success ,onFaild: Faild)
        
    }
    
    
    //
    func onStart(){
        print("======start")
//         self.showLoding("加载中……")
       
        
    }
    
    //
    func Success(result:String){
//         self.showSuccessMessage("成功！");
//         self.showLoding("加载中……")
        self.hideLoding()
       
    }
    //
    func Faild(error:String){
        print(error);
//         self.showSuccessMessage("失败！");
    }


}

