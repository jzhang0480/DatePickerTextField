//
//  DatePickerTextField.h
//
//  Created by Javen on 2016/11/8.
//  Copyright © 2016年 Javen. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  日期文字的格式
 */
typedef NS_ENUM(NSInteger, DateTextFieldType) {
    /**
     *  日期+时间
     */
    DateTextFieldTime,
    /**
     *  年月
     */
    DateTextFieldYearMonth,
    /**
     *  年月日
     */
    DateTextFieldYearMonthDay,
};


/**
 可选的日期范围

 - DateTextFieldRangeUnLimited: 无限制
 - DateTextFieldRangeBefore: 此刻之前
 - DateTextFieldRangeAfter: 此刻之后
 */
typedef NS_ENUM(NSInteger, DateTextFieldRange) {
    DateTextFieldRangeUnLimited,
    DateTextFieldRangeBefore,
    DateTextFieldRangeAfter
};

@interface ZJDatePickerTextField : UITextField
@property (nonatomic, assign) DateTextFieldType type;
@property (nonatomic, assign) DateTextFieldRange rangeType;
@property (nonatomic, copy) void (^blockEndEdit)(void);
/**
 datePicker的日期
 */
@property (strong, nonatomic, readonly) NSDate *date;
@end

@interface NSDate (DateTFStringAddtions)

/** yyyy-MM-dd HH:mm:ss */
- (NSString *)yearMontnDayTime;
/** yyyy-MM-dd */
- (NSString *)yearMonthDayString;
/** yyyy-MM */
- (NSString *)yearMonthString;
@end
