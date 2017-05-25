//
//  ViewController.m
//  Histogram
//
//  Created by mac on 17/5/25.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "ViewController.h"
#import "HistogramView.h"

#define SCREEN_Width    ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_Height   ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@property (nonatomic, strong) HistogramView *histogramView;

@end

@implementation ViewController

#pragma mark -
- (HistogramView *)histogramView
{
    if (!_histogramView) {
        _histogramView = [[HistogramView alloc] initWithFrame:CGRectMake(10, SCREEN_Height / 2.0 / 2.0, SCREEN_Width - 20, SCREEN_Height / 2.0)];
        _histogramView.backgroundColor = [UIColor orangeColor];
    }
    return _histogramView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUI];
}

#pragma mark -createUI
- (void)createUI
{
    [self.view addSubview:self.histogramView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
