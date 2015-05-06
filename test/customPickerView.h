//
//  customPickerView.h
//  YiQi
//
//  Created by liudongdong on 15/4/25.
//  Copyright (c) 2015年 liudongdong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customPickerView : UIView

- (instancetype)init;
- (void)setPickerViewArray:(NSArray *)pickerViewArray;
- (NSInteger)getSelectedRow;

@end
