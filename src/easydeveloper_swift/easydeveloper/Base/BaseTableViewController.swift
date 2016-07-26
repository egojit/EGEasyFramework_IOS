//
//  BaseTableViewController.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/25.
//  Copyright © 2016年 egojit. All rights reserved.
//

import Foundation

 class  BaseTableViewContrller: CoreController , UITableViewDelegate , UITableViewDataSource{
    
    
    var tableView:UITableView!
    var cellId:String="cell"
    var numOfSection:Int!
    var numOfRow:Int!;
    
    func viewDidLoad(cellId:String){
        super.viewDidLoad()
        self.cellId=cellId;
        numOfSection=1;
        numOfRow=1;
                self.tableView=UITableView(frame: self.view!.frame);
         self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellId)
        self.tableView!.delegate = self;
        self.tableView!.dataSource = self;
       

        self.view!.addSubview(self.tableView)
    }
    
    
    
    
    
    //设置数据源
    func setData(source:[Dictionary<String,AnyObject>]){
        numOfRow=source.count;
        self.tableView.reloadData();
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRow;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return numOfSection
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        return UITableViewCell();
    }
    
    
}
