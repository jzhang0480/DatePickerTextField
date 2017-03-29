//
//  DatePickerTextField.m
//
//  Created by Javen on 2016/11/8.
//  Copyright © 2016年 Javen. All rights reserved.
//

#import "DatePickerTextField.h"

@interface DatePickerTextField () <UITextFieldDelegate>
@property (strong, nonatomic) UIDatePicker *datePicker;

@end

@implementation DatePickerTextField

- (void)awakeFromNib {
    [super awakeFromNib];
    self.inputView = self.datePicker;
    self.delegate = self;
    [self.datePicker addTarget:self
                        action:@selector(actionPickerDidChanged:)
              forControlEvents:UIControlEventValueChanged];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.inputView = self.datePicker;
        self.delegate = self;
        [self.datePicker addTarget:self
                            action:@selector(actionPickerDidChanged:)
                  forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (void)setType:(DateTextFieldType)type {
    _type = type;
    UIDatePicker *datePicker = (UIDatePicker *) self.inputView;
    NSDate *date = datePicker.date;
    switch (self.type) {
        case DateTextFieldYearMonth: {
            self.text = [date yearMonthString];
            datePicker.datePickerMode = UIDatePickerModeDate;
            break;
        }
        case DateTextFieldYearMonthDay: {
            self.text = [date yearMonthDayString];
            datePicker.datePickerMode = UIDatePickerModeDate;
            break;
        }
        case DateTextFieldTime: {
            datePicker.datePickerMode = UIDatePickerModeDateAndTime;
            self.text = [date yearMontnDayTime];
            break;
        }
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (self.rangeType == DateTextFieldRangeAfter) {
        self.datePicker.minimumDate = [NSDate date];
        self.datePicker.maximumDate = nil;
    } else if (self.rangeType == DateTextFieldRangeBefore) {
        self.datePicker.minimumDate = nil;
        self.datePicker.maximumDate = [NSDate date];
    } else {
        self.datePicker.minimumDate = nil;
        self.datePicker.maximumDate = nil;
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    UIDatePicker *datePicker = (UIDatePicker *) textField.inputView;
    NSDate *date = datePicker.date;
    switch (self.type) {
        case DateTextFieldYearMonth: {
            textField.text = [date yearMonthString];
            break;
        }
        case DateTextFieldYearMonthDay: {
            textField.text = [date yearMonthDayString];
            break;
        }
        case DateTextFieldTime: {
            textField.text = [date yearMontnDayTime];
            break;
        }
    }
    if (self.blockEndEdit) {
        self.blockEndEdit();
    }
}

- (void)actionPickerDidChanged:(UIDatePicker *)datePicker {
    NSDate *date = datePicker.date;
    switch (self.type) {
        case DateTextFieldYearMonth: {
            self.text = [date yearMonthString];
            break;
        }
        case DateTextFieldYearMonthDay: {
            self.text = [date yearMonthDayString];
            break;
        }
        case DateTextFieldTime: {
            self.text = [date yearMontnDayTime];
            break;
        }
    }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(paste:)) //禁止粘贴
        return NO;
    if (action == @selector(select:)) // 禁止选择
        return NO;
    if (action == @selector(selectAll:)) // 禁止全选
        return NO;
    return [super canPerformAction:action withSender:sender];
}

- (NSDate *)date {
    return self.datePicker.date;
}

- (UIDatePicker *)datePicker {
    if (!_datePicker) {
        _datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 216)];
        self.inputView = _datePicker;
        NSDate *date = [NSDate date];
        _datePicker.date = date;
    }
    return _datePicker;
}

@end

@implementation NSDate (DateTFStringAddtions)

/** yyyy-MM-dd HH:mm:ss */
- (NSString *)yearMontnDayTime {
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [f stringFromDate:self];
}
/** yyyy-MM-dd */
- (NSString *)yearMonthDayString {
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyy-MM-dd"];
    return [f stringFromDate:self];
}
/** yyyy-MM */
- (NSString *)yearMonthString {
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyy-MM"];
    return [f stringFromDate:self];
}

@end

