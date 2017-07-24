## DatePickerTextField

一个好用的时间选择框

![image](https://github.com/JavenZ/DatePickerTextField/blob/master/QQ20170724-135305.gif?raw=true)

之前做时间选择框的时候，都感觉不方便，需要自己控制它的弹出和收起，后来发现使用UITextField来做比较方便，于是就简单封装了下，以便使用。

## 导入
* 手动导入
	* 直接把DatePickerTextField文件夹中的文件导入即可
* cocoapods导入
	* pod 'DatePickerTextField', '~> 1.0.2'

## 使用
```
#import "MainTableViewController.h"
#import "DatePickerTextField.h"
@interface MainTableViewController ()
@property (weak, nonatomic) IBOutlet DatePickerTextField *ymdhms;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏光标
    self.ymdhms.tintColor = [UIColor clearColor];
    //设置选择的日期格式
    self.ymdhms.type = DateTextFieldTime;
    //设置可选的日期范围
    self.ymdhms.rangeType  = DateTextFieldRangeBefore;
    
    //注：如果需要在datePicker上加toolBar的话，直接使用iqkeyboardmanager即可
}
```

只需要配置日期格式和可选日期范围就完成了一个日期选择输入框。可以通过storyboard创建或者通过代码创建，还是比较方便的。

