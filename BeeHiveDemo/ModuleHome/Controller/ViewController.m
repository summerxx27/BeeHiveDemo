//
//  ViewController.m
//  BeeHiveDemo
//
//  Created by summerxx on 2020/7/1.
//  Copyright © 2020 summerxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
#define DJGetService(protocolName)    \
((id<protocolName>)[[BHContext shareInstance] getServiceInstanceFromServiceName:NSStringFromProtocol(@protocol(protocolName))])
@implementation ViewController
@synthesize testStr = _testStr;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-50,
                                                               80,
                                                               100,
                                                               80)];
    btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-50,
                                                               150,
                                                               300,
                                                               80)];
    testBtn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    testBtn.backgroundColor = [UIColor blackColor];
    [testBtn setTitle:@"调用test模块test方法" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    
}

- (void)testClick {
    [DJGetService(BHModuleTestServiceProtocol) testPriint];
    NSLog(@"DJGetService === %@", DJGetService(BHModuleTestServiceProtocol));

}

- (void)click:(UIButton *)btn
{
    id<BHModuleTestServiceProtocol> obj = [[BeeHive shareInstance] createService:@protocol(BHModuleTestServiceProtocol)];
    if ([obj isKindOfClass:[UIViewController class]]) {
        obj.testStr = @"我是一个测试字符串";
        [self.navigationController pushViewController:(UIViewController *)obj animated:YES];
    }
}


@end
