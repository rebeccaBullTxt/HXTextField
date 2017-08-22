//
//  HXTextField.h
//  HXTextField
//
//  Created by Jney on 2017/8/22.
//  Copyright © 2017年 Jney. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickRightButtonBlock)(NSString *value);

@interface HXTextField : UIView

/**
 placeHolderColor颜色
 */
@property(strong, nonatomic)UIColor *placeHolderColor;

/**
 限制输入字符的长度 默认是最大值
 */
@property(assign, nonatomic)NSInteger limitNumber;

/**
 placeholder提示字符
 */
@property(strong, nonatomic)NSString *placeholder;

/**
 允许输入的字符串类型  默认是空值   为空的时候表示可以输入任意类型
 */
@property(strong, nonatomic)NSString *inputStringType;

/**
 自定义textField右边视图
 */
@property(strong, nonatomic)UIView *customRightView;

/**
 点击右边按钮的回调
 */
@property(copy, nonatomic)ClickRightButtonBlock clickRightButtonBlock;

@end
