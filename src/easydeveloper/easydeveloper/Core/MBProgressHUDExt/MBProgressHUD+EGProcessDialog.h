/*******************************************************
 *
 *  Auther:egojit
 *  QQ:egojit
 *  Time:2016-07-09
 *  mark:网络请求框扩展
 *
 *******************************************************/

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (EGProcessDialog)
+ (void)showSuccess:(NSString *)success;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (void)showError:(NSString *)error;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message;
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

+ (void)hideHUD;
+ (void)hideHUDForView:(UIView *)view;

+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view;
@end
