
/*******************************************************
 *
 *  Auther:egojit
 *  QQ:egojit
 *  Time:2016-07-09
 *  mark:字符串扩展类
 *
 *******************************************************/
#import <UIKit/UIKit.h>

@interface EGCoreViewController : UIViewController
//网络请求等待框
-(void)showLogingWidthTitle:(NSString*)title;

//默认网络请求等待框
-(void)showLoging;

//隐藏网络请求等待框
-(void)hideLoding;

//正确提示框
-(void)showSuccessWidthTitle:(NSString *)title;

//异常提示框
-(void)showErrorWidthTitle:(NSString *)title;

@end
