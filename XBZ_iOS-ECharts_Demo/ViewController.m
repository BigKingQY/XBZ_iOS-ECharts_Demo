//
//  ViewController.m
//  XBZ_iOS-ECharts_Demo
//
//  Created by BigKing on 2018/7/5.
//  Copyright © 2018年 BigKing. All rights reserved.
//

#import "ViewController.h"
#import "XBZPYOptionManager.h"

@interface ViewController ()

@property (nonatomic, strong) PYEchartsView *echartsView;

@property (nonatomic, strong) PYOption *option;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.echartsView = [[PYEchartsView alloc] initWithFrame:CGRectMake(0, 70, self.view.frame.size.width, 210)];
    [self.view addSubview:self.echartsView];
    
}

- (IBAction)example1:(id)sender {
    
    self.option = [XBZPYOptionManager configOptionWithStack:@[@"common", @"common", @"common"]];
    self.option.color = @[@"#FF0000", @"#00FF00", @"#0000FF"];
    self.option.legend.data = @[@"水果", @"肉类", @"蛋类"].mutableCopy;
    self.option.xAxis.firstObject.data = @[@"苹果", @"香蕉", @"鸡肉", @"鸭蛋", @"恐龙蛋"].mutableCopy;
    self.option.series[0].nameEqual(@"水果").dataEqual(@[@"100", @"200", @"-", @"-", @"-"]);
    self.option.series[1].nameEqual(@"肉类").data = @[@"-", @"-", @"500", @"-", @"-"].mutableCopy;
    self.option.series[2].nameEqual(@"蛋类").data = @[@"-", @"-", @"-", @"300", @"900"].mutableCopy;
    
    [self.echartsView setOption:self.option];
    [self.echartsView loadEcharts];
    
}

- (IBAction)example2:(id)sender {
    
    self.option = [XBZPYOptionManager configOptionWithStack:@[@"one", @"two", @"three"]];
    self.option.color = @[@"#AA0000", @"#00AA00", @"#0000AA"];
    self.option.legend.data = @[@"水果", @"肉类", @"蛋类"].mutableCopy;
    self.option.xAxis.firstObject.data = @[@"一月份", @"二月份", @"三月份", @"四月份", @"五月份"].mutableCopy;
    self.option.series[0].nameEqual(@"水果").dataEqual(@[@"100", @"200", @"200", @"450", @"870"]);
    self.option.series[1].nameEqual(@"肉类").data = @[@"400", @"500", @"500", @"340", @"210"].mutableCopy;
    self.option.series[2].nameEqual(@"蛋类").data = @[@"500", @"140", @"320", @"300", @"900"].mutableCopy;
    
    [self.echartsView setOption:self.option];
    [self.echartsView loadEcharts];
}

- (IBAction)example3:(id)sender {
    
    self.option = [XBZPYOptionManager configOptionWithStack:@[@"common", @"common", @"common"]];
    self.option.color = @[@"#CC0000", @"#00CC00", @"#0000CC"];
    self.option.legend.data = @[@"水果", @"肉类", @"蛋类"].mutableCopy;
    self.option.xAxis.firstObject.data = @[@"一月份", @"二月份", @"三月份", @"四月份", @"五月份"].mutableCopy;
    self.option.series[0].nameEqual(@"水果").dataEqual(@[@"100", @"200", @"200", @"450", @"870"]);
    self.option.series[1].nameEqual(@"肉类").data = @[@"400", @"500", @"500", @"340", @"210"].mutableCopy;
    self.option.series[2].nameEqual(@"蛋类").data = @[@"500", @"140", @"320", @"300", @"900"].mutableCopy;
    
    [self.echartsView setOption:self.option];
    [self.echartsView loadEcharts];
    
}

- (IBAction)example4:(id)sender {
    
    self.option = [XBZPYOptionManager configOptionWithStack:@[@"common"]];
    self.option.color = @[@"#CC0000"];
    self.option.legend.data = @[@"肉类"].mutableCopy;
    self.option.xAxis.firstObject.data = @[@"一月份", @"二月份", @"三月份", @"四月份", @"五月份"].mutableCopy;
    self.option.series[0].nameEqual(@"肉类").data = @[@"400", @"500", @"500", @"340", @"210"].mutableCopy;
    
    [self.echartsView setOption:self.option];
    [self.echartsView loadEcharts];
    
}

@end
