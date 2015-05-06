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

@property (strong, nonatomic) customPickerView *customPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _cityArray = [[NSArray alloc] initWithObjects:@"北京", @"上海", @"广州", @"深圳", @"杭州",
                  @"重庆", @"成都", @"海口", @"苏州", @"武汉",nil
                  ];
    
    _brandArray = [[NSArray alloc] initWithObjects:@"阿米尼", @"奥赛奇", @"爱玛", @"宝归来",
                  @"川崎", @"二次方", @"凤凰", @"菲利普",
                  @"飞鸽", @"捷安特", @"金海马", @"金狮",
                  @"雷克斯", @"狼途", @"T7", @"维纳斯"	,
                  @"永久", @"追风鸟",@"其它", nil
                   ];
    
    _customPickerView = [[customPickerView alloc] init];
    [_customPickerView setPickerViewArray:_cityArray];
    
    [self.view addSubview:_customPickerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
