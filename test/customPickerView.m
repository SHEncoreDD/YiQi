//
//  customPickerView.m
//  YiQi
//
//  Created by liudongdong on 15/4/25.
//  Copyright (c) 2015年 liudongdong. All rights reserved.
//

#import "customPickerView.h"

@interface customPickerView () < UIPickerViewDataSource, UIPickerViewDelegate >

@property (strong, nonatomic) UIButton *confirmButton;
@property (strong, nonatomic) UIPickerView *pickerView;

@property (strong, nonatomic) NSArray *pickerViewArray;
@property (assign, nonatomic) NSInteger selectedRow;

@end

@implementation customPickerView

- (instancetype)init {
    
    self = [super init];
    
    _confirmButton = [[UIButton alloc]initWithFrame:CGRectMake(260, 5, 50, 30)];
    [_confirmButton setTitle:@"确 定" forState:UIControlStateNormal];
    _confirmButton.titleLabel.font = [UIFont systemFontOfSize:13.0f];
    _confirmButton.backgroundColor = [UIColor blueColor];
    [_confirmButton addTarget:self action:@selector(confirmButtonAction) forControlEvents:UIControlEventTouchUpInside];
    
    _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 40, 320, 216)];
    _pickerView.tag = 2;
    _pickerView.showsSelectionIndicator = YES;
    _pickerView.backgroundColor = [UIColor lightTextColor];
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
    
    self.frame = CGRectMake(0, 263, 320, 256);
    self.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:_confirmButton];
    [self addSubview:_pickerView];
    
    return self;
}

- (void)setPickerViewArray:(NSArray *)pickerViewArray{
    
    _pickerViewArray = pickerViewArray;
    [self reloadPickerView];
}

- (void)reloadPickerView{
    
    [_pickerView reloadAllComponents];
    
}

- (NSInteger)getSelectedRow{
    
    return _selectedRow;
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [_pickerViewArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [_pickerViewArray objectAtIndex:row];
    
}

- (void)confirmButtonAction{
    
    _selectedRow = [_pickerView selectedRowInComponent:0];
    
    [self removeFromSuperview];
}

@end
