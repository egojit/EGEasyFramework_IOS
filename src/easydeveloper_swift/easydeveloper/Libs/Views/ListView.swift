//
//  ListView.swift
//  easydeveloper_swift
//
//  Created by egojit on 16/7/27.
//  Copyright © 2016年 egojit. All rights reserved.
//  自定义UITableView
//

import Foundation

class ListView:UITableView,UITableViewDelegate, UITableViewDataSource{
    
    var isCanRefresh=false;
    var isCanLoadMore=false;
    private var _refreshState:RefreshState=RefreshState.RefreshStateNormal
    var pulldownLabel:UILabel?;
    var SwitchPoint:CGFloat = 60;
    var originalInsetTop:CGFloat=10.00;
    var numOfSection:Int!
    var numOfRow:Int!;
    var cellId:String="cell"
    
    var tableViewOpr:((tableView: UITableView, indexPath: NSIndexPath,cell:UITableViewCell?)->UITableViewCell)?
    
    var cellClick:((indexPath:NSIndexPath)->())?
    
    
    var refreshState:RefreshState{
        get{
            return _refreshState
        }
        set(value){
            _refreshState = value;
            switch (value) {
            case RefreshState.RefreshStateNormal:
                self.pulldownLabel!.text = "下拉刷新";
                self.pulldownLabel!.sizeToFit();
                break;
            case RefreshState.RefreshStateLoading:
                self.pulldownLabel!.text = "正在刷新...";
                self.pulldownLabel!.sizeToFit();
//                if(self.refreshBlock){
//                    self.refreshBlock();//这里就是你要执行的耗时的操作
//                }
                break;
            case RefreshState.RefreshStatePulling:
                self.pulldownLabel!.text = "松开即可刷新";
                self.pulldownLabel!.sizeToFit();
                break;
            default:
                break;
            }
        }
    }
    
    
    //是否可以下拉刷新
    func setRefeshEnable(isCanRefreshP: Bool){
        self.isCanRefresh=isCanRefreshP;
    }
    
    //是否可以加载更多
    func setLoadMoreEnable(isCanLoadMoreP : Bool){
        self.isCanLoadMore=isCanLoadMoreP;
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        pulldownLabel=UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50));
        self.tableHeaderView = pulldownLabel;
        pulldownLabel?.textColor=UIColor.blackColor()
         self.delegate=self;
        self.dataSource=self;
        numOfSection=1;
        
    }
    
    init(frame: CGRect,cellId:String, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.cellId=cellId;
        pulldownLabel=UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50));
        self.tableHeaderView = pulldownLabel;
        pulldownLabel?.textColor=UIColor.blackColor()
        self.delegate=self;
        self.dataSource=self;
        numOfSection=1

        
    }
    
    
    // UIScrollViewDelegate协议 实现方法
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if self.contentOffset.y < -SwitchPoint - self.originalInsetTop {
            if self.refreshState == RefreshState.RefreshStateNormal {//小于临界值（在触发点以下），如果状态是正常就转为下拉刷新，如果正在刷新或者已经是下拉刷新则不变
                self.refreshState = RefreshState.RefreshStatePulling;
            }
        }else //大于临界值（在触发点以上，包括触发点）
            if self.dragging {//手指没有离开屏幕
                if(self.refreshState == RefreshState.RefreshStatePulling){//原来是下拉的话变成正常，原来是刷新或者正常的话不变
                    self.refreshState = RefreshState.RefreshStateNormal;
                }
            }else//手指离开屏幕
                if self.refreshState == RefreshState.RefreshStatePulling {//原来是下拉的话变成加载中，原来是加载中或者正常的话不变
                    self.contentInset = UIEdgeInsetsMake(self.originalInsetTop+SwitchPoint, 0, 0, 0);//改变contentInset的值就可以取消回弹效果停留在当前位置了 关于contentIinset的介绍，可以查看我的上一篇文章
                    self.refreshState = RefreshState.RefreshStateLoading;
                }
        
    
    }
    
    
    //设置数据源
    func setData(source:[Dictionary<String,AnyObject>]){
        numOfRow=source.count;
        self.reloadData();
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRow;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return numOfSection
    }
    
    
    func setCellView(viewOpr:(tableView: UITableView, indexPath: NSIndexPath,cell:UITableViewCell?)->UITableViewCell){
        self.tableViewOpr=viewOpr;

        
    }
    
    func setOnItemClick(viewOpr:(indexPath:NSIndexPath)->()){
        self.cellClick=viewOpr;
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell1:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellId,forIndexPath: indexPath) as UITableViewCell
        return self.tableViewOpr!(tableView: tableView, indexPath: indexPath,cell:cell1);
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if  self.cellClick != nil{
            self.cellClick!(indexPath: indexPath)
            
        }
    }

    
    
    
    
    
}

enum RefreshState{
   case  RefreshStateNormal //正常
   case   RefreshStatePulling//释放即可刷新
    case  RefreshStateLoading//加载中
}



