//
//  NSString+EGStringExt.m
//  easydeveloper
//
//  Created by egojit on 16/7/9.
//  Copyright © 2016年 egojit. All rights reserved.
//

#import "NSString+EGStringExt.h"

@implementation NSString (EGStringExt)

//判断字符串是否是空
+(BOOL)isNullOrEmpty:(NSString *)str{
    if (str==nil||[str isKindOfClass:[NSNull class]]||str.length==0) {
        return true;
    }
    else
        return false;
}
@end
