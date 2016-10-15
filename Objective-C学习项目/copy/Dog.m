//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (id)copyWithZone:(nullable NSZone *)zone{
    NSLog(@"执行了copyWithZone方法");
    Dog *d=[[Dog alloc] init];
    d.speed=self.speed;
    d.legNum=self.legNum;
    return d;
}
@end
