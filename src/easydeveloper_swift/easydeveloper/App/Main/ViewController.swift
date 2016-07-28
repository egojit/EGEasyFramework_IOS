//
//  ViewController.swift
//  easyframework_swift
//
//  Created by egojit on 16/7/21.
//  Copyright © 2016年 egojit. All rights reserved.
//

import UIKit

class ViewController: BaseTableViewContrller {
    
    
    let list:[Dictionary<String,AnyObject>] = [["name":"gaolu","age":11],["name":"章伟","age":11]]
    override func viewDidLoad() {
        super.viewDidLoad("ViewController")
    }

    
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
          Test()
        
        self.tableView.setData(list)
        self.tableView.setCellView { (tableView, indexPath, cell) -> UITableViewCell in
            var cellMid=cell;
            if cellMid == nil{
                cellMid = UITableViewCell(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 50))
            }
            let row=indexPath.row as Int
            let dic:Dictionary<String,AnyObject>=self.list[row];
            cellMid!.textLabel?.text = dic["name"] as? String;
            return cellMid!;
        }
//        self.tableView.setRefeshEnable(true);
        
        self.tableView.setOnItemClick { (indexPath) -> () in
             LogUtil.i(nil,info: "点击行\(indexPath.row)")
        }
        
        
        
      
    }
    
    func Test(){
        let dic:Dictionary<String,String> = ["name":"egojit","age":"12"];
        
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

