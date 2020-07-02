//
//  HomeModule.m
//  BeeHiveDemo
//
//  Created by summerxx on 2020/7/1.
//  Copyright © 2020 summerxx. All rights reserved.
//

#import "HomeModule.h"
#import "ViewController.h"
@implementation HomeModule

@BeeHiveMod(HomeModule);

- (void)modSetUp:(BHContext *)context
{
    [[BeeHive shareInstance]  registerService:@protocol(BHModuleHomeServiceProtocol) service:[ViewController class]];
}

@end
