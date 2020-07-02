//
//  BHJTTestService.h
//  BeeHive_Exampl
//
//  Created by summerxx on 2020/6/30.
//  Copyright © 2020 一渡. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"
#import <BeeHive/BHModuleProtocol.h>
NS_ASSUME_NONNULL_BEGIN

@protocol BHModuleTestServiceProtocol <BHModuleProtocol>
@property(nonatomic, strong) NSString *testStr;
- (void)testPriint;
@end

NS_ASSUME_NONNULL_END
