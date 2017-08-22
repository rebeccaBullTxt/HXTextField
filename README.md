# HXTextField

自定义封装UITextField  简单方便
限制文本款输入类型,文本款输入长度,给文本框的rightView设置按钮,只需要给相应的属性赋值即可

    textField = [[HXTextField alloc] initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width - 30, 44)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.placeholder = @"请输入文本信息";
    textField.placeHolderColor = [UIColor redColor];
    ///只允许输入数字
    textField.inputStringType = HXNumberString;
    ///输入的数字不能大于11位
    textField.limitNumber = 11; 
    [self.view addSubview:textField];
![img](https://github.com/zengweizhen/HXTextField/blob/master/HXTextField/readme.gif)


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
