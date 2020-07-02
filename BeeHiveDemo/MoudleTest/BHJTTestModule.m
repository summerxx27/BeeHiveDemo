//
//  BHJTTestModule.m
//  BeeHive_Example
//
//  Created by summerxx on 2020/6/30.
//  Copyright © 2020 一渡. All rights reserved.
//

#import "BHJTTestModule.h"
#import "BHJTTestViewController.h"
@implementation BHJTTestModule
@synthesize testStr = _testStr;
@BeeHiveMod(BHJTTestModule)
- (void)modSetUp:(BHContext *)context
{
    /// 注册服务
    [[BeeHive shareInstance]  registerService:@protocol(BHModuleTestServiceProtocol) service:[BHJTTestViewController class]];
    /// 添加服务
    [context addServiceWithImplInstance:self
    serviceName:NSStringFromProtocol(@protocol(BHModuleTestServiceProtocol))];
}

- (void)modInit:(BHContext *)context
{
    
}

- (void)testPriint
{
    NSLog(@"testPriint");
}
@end
