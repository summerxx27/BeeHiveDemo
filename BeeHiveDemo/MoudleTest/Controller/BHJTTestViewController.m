//
//  BHJTTestViewController.m
//  BeeHive_Example
//
//  Created by summerxx on 2020/6/30.
//  Copyright © 2020 一渡. All rights reserved.
//

#import "BHJTTestViewController.h"

@interface BHJTTestViewController ()

@end

@implementation BHJTTestViewController
@synthesize testStr = _testStr;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%@", self.testStr);
}
@end
