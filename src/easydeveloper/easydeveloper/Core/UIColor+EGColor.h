/*******************************************************
 *
 *  Auther:egojit
 *  QQ:egojit
 *  Time:2016-07-09
 *  mark:UIColor扩展
 *
 *******************************************************/

#import <UIKit/UIKit.h>

@interface UIColor (EGColor)
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue;
+ (NSString *) hexFromUIColor: (UIColor*) color;
@end
