//
//  ViewController.m
//  test
//
//  Created by liudongdong on 15/4/22.
//  Copyright (c) 2015年 liudongdong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *cityArray;
@property (strong, nonatomic) NSArray *brandArray;

@property (strong, nonatomic) NSArray *currentArray;

@property (strong, nonatomic) UIButton *changeContentButton;

@property (strong, nonatomic) customPickerView *customPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _cityArray = [[NSArray alloc] initWithObjects:@"北京", @"上海", @"广州", @"深圳", @"杭州", @"重庆", @"成都", @"海口", @"苏州", @"武汉", nil ];
    
    _brandArray = [[NSArray alloc] initWithObjects:@"戴尔", @"联想", @"三星", @"索尼", @"惠普",  @"mac", nil];
    
    _changeContentButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _changeContentButton.frame = CGRectMake(250, 60, 60, 30);
    [_changeContentButton setTitle:@"btn" forState:UIControlStateNormal];
    [_changeContentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_changeContentButton setBackgroundColor:[UIColor blackColor]];
    [_changeContentButton addTarget:self action:@selector(changeContentButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_changeContentButton];
    
    _customPickerView = [[customPickerView alloc] init];
    [_customPickerView setPickerViewArray:_cityArray];
    _currentArray = _cityArray;
    
    [self.view addSubview:_customPickerView];
}

- (void)changeContentButtonAction:(id)sender{
    
    [_customPickerView removeFromSuperview];
    
    if ([_currentArray isEqualToArray:_cityArray]) {
        
        [_customPickerView setPickerViewArray:_brandArray];
        _currentArray = _brandArray;
        
        [self.view addSubview:_customPickerView];
        
    }
    else if([_currentArray isEqualToArray:_brandArray]){
        
        [_customPickerView setPickerViewArray:_cityArray];
        _currentArray = _cityArray;
        
        [self.view addSubview:_customPickerView];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
