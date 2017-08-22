//
//  ViewController.m
//  HXTextField
//
//  Created by Jney on 2017/8/22.
//  Copyright © 2017年 Jney. All rights reserved.
//

#import "ViewController.h"
#import "HXTextField.h"

static NSString *HXNumberString = @"1234567890";
static NSString *HXCharString   = @"qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";

@interface ViewController ()
///限制字符串的长度
@property(nonatomic, assign) NSInteger *limitNumber;
@property(nonatomic, strong) HXTextField *textField;
@property(nonatomic, strong) UIButton *rightButton;

@end

@implementation ViewController
@synthesize textField, rightButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    textField = [[HXTextField alloc] initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width - 30, 44)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.placeholder = @"请输入文本信息";
    textField.placeHolderColor = [UIColor redColor];
    [self.view addSubview:textField];
    
}

- (IBAction)rightViewAction:(UIButton *)sender {
    
    if (!rightButton) {
        rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
        rightButton.backgroundColor = [UIColor redColor];
        [rightButton setTitle:@"点击按钮" forState:UIControlStateNormal];
        textField.customRightView = rightButton;
    }
    textField.clickRightButtonBlock = ^(NSString *value) {
        
        NSLog(@"这里是文本款里面值:%@",value);
    };

}

- (IBAction)default:(UIButton *)sender {
    
    textField.inputStringType = nil;
    textField.limitNumber = 0;
}


- (IBAction)char_limit:(UIButton *)sender {
    
    ///只允许输入字母
    textField.inputStringType = HXCharString;
    ///输入的字母不能大于5位
    textField.limitNumber = 5;
}

- (IBAction)number_limit:(UIButton *)sender {
    
    ///只允许输入数字
    textField.inputStringType = HXNumberString;
    ///输入的数字不能大于11位
    textField.limitNumber = 11;
}

@end
