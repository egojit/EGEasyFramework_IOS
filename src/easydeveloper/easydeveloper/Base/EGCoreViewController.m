//
//  EGCoreViewController.m
//  easydeveloper
//
//  Created by egojit on 16/7/9.
//  Copyright © 2016年 egojit. All rights reserved.
//

#import "EGCoreViewController.h"
#import "NSString+EGStringExt.h"
#import "MBProgressHUD+EGProcessDialog.h"

@interface EGCoreViewController ()
@property(strong,nonatomic) NSString* logingTip;
@end

@implementation EGCoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _logingTip=@"加载中……";
    self.view.backgroundColor=VIEW_BG;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//网络请求弹出框
-(void)showLogingWidthTitle:(NSString *)title{
    if ([NSString isNullOrEmpty:title]) {
        [MBProgressHUD showMessage:_logingTip];
    }else{
        [MBProgressHUD showMessage:title];
    }
}

//默认网络请求等待框
-(void)showLoging{
    [MBProgressHUD showMessage:_logingTip];
}

//隐藏网络请求等待框
-(void)hideLoding{
    [MBProgressHUD hideHUD];
}


//正确弹出框
-(void)showSuccessWidthTitle:(NSString *)title{
    [MBProgressHUD showSuccess:title];
}

//异常提示框
-(void)showErrorWidthTitle:(NSString *)title{
    [MBProgressHUD showError:title];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
