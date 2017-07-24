//
//  MainTableViewController.m
//  DatePickerTextFieldDemo
//
//  Created by Javen on 2017/3/29.
//  Copyright © 2017年 Javen. All rights reserved.
//

#import "MainTableViewController.h"
#import "DatePickerTextField.h"
@interface MainTableViewController ()
@property (weak, nonatomic) IBOutlet DatePickerTextField *ymdhms;
@property (weak, nonatomic) IBOutlet DatePickerTextField *ymd;
@property (weak, nonatomic) IBOutlet DatePickerTextField *ym;
@property (weak, nonatomic) IBOutlet DatePickerTextField *other;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏光标
    self.ymdhms.tintColor = [UIColor clearColor];
    self.ymdhms.type = DateTextFieldTime;
    self.ymdhms.rangeType  = DateTextFieldRangeBefore;
    
    self.ymd.type = DateTextFieldYearMonthDay;
    self.ymd.rangeType = DateTextFieldRangeAfter;
    
    self.ym.type = DateTextFieldYearMonth;
    self.ym.rangeType = DateTextFieldRangeUnLimited;
    
    self.ym.blockEndEdit = ^{
        NSLog(@"end");
    };
    
    self.other.type = DateTextFieldTime;
    self.other.rangeType  = DateTextFieldRangeBefore;
    //注：如果需要在datePicker上加toolBar的话，直接使用iqkeyboardmanager即可
}
- (IBAction)chooseDate:(id)sender {
    [self.other becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
