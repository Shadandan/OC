//
//  BaoMu.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "BaoMu.h"
#import "Baby.h"
@implementation BaoMu
-(void)feedBabyEat:(Baby *)baby{
    baby.blood+=20;
    NSLog(@"保姆正在喂婴儿吃饭,baby.blood=%d",baby.blood);
}
-(void)HongBabySleep:(Baby *)baby{
    baby.sleep+=10;
    NSLog(@"保姆正在哄婴儿睡觉,baby.sleep=%d",baby.sleep);
}
@end
