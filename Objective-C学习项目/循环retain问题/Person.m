//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc{
    [_dog dealloc];
    NSLog(@"Person dealloc");
    [super dealloc];
}
@end
