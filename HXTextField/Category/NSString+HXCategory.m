//
//  NSString+HXCategory.m
//  HXTextField
//
//  Created by Jney on 2017/8/22.
//  Copyright © 2017年 Jney. All rights reserved.
//

#import "NSString+HXCategory.h"

@implementation NSString (HXCategory)

+ (BOOL)hx_isBlankString:(NSString *)string{
    
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    return NO;
}

@end
