//
//  BaseTableViewController.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//

import Foundation

 class  BaseTableViewContrller: CoreController {
    
    
    var tableView:ListView!
    var cellId:String="cell"
    
    func viewDidLoad(cellId:String){
        super.viewDidLoad()
        self.cellId=cellId;
        self.tableView=ListView(frame: self.view!.frame,cellId:self.cellId ,style: UITableViewStyle.Plain);
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellId)
       

        self.view!.addSubview(self.tableView)
    }
    
    
    
        
    
}
