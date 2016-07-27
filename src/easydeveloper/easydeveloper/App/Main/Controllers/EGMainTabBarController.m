//
//  EGMainTabBarController.m
//  easydeveloper
//
//  Created by egojit on 16/7/9.
//  Copyright © 2016年 egojit. All rights reserved.
//

#import "EGMainTabBarController.h"
#import "ViewController.h"

@implementation EGMainTabBarController

//初始化控制器
-(void)initControllers{
    ViewController * viewController=[[ViewController alloc]init];
    NSArray* controllers=@[viewController];
    self.viewControllers=controllers;
}
@end
