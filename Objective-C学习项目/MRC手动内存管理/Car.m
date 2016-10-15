//
//  Car.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setSpeed:(int)speed{
    _speed=speed;
}
-(void)run{
    NSLog(@"车在以%d速度跑",_speed);
}
-(void)dealloc{
    NSLog(@"速度是%d的Car已经挂了",_speed);
    [super dealloc];
}
@end
