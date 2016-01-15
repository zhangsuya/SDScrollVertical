//
//  ViewController.m
//  SDScrollVertical
//
//  Created by Mac on 16/1/15.
//  Copyright © 2016年 suya. All rights reserved.
//

#import "ViewController.h"
#import "SDScrollVerticalView.h"
#import "SDMacro.h"
@interface ViewController ()<SDScrollVerticalViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SDScrollVerticalView *cycleView = [SDScrollVerticalView cycleScrollViewWithFrame:CGRectMake(12, 64 +32, kDeviceWidth -24, kDeviceHeight_No_NavigationHeight -54  -32) delegate:self placeholderImage:[UIImage imageNamed:@"pic_loading1.pdf"]]  ;
    cycleView.autoScroll = true;
    cycleView.autoScrollTimeInterval = 4.0;
    cycleView.pageControlAliment = SDScrollVerticalViewPageContolAlimentCenter;
    cycleView.pageDotColor = [UIColor grayColor];
    //    cycleView.currentPageDotColor = ColorOne;
    
    NSArray *imgeArray = @[@"http://test.mokooapp.com/Public/default/banner.png",
                           @"http://test.mokooapp.com/Public/default/banner.png",
                           @"http://test.mokooapp.com/Public/default/banner.png"];
    cycleView.imageURLStringsGroup = imgeArray;
    [self.view addSubview:cycleView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
