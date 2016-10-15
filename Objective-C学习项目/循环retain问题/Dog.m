//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"
@class Person;@implementation Dog
-(void)dealloc{
    //[_owner dealloc];//_owner是assign的引用计数没有+1，所以此处不必dealloc
    NSLog(@"Dog dealloc");
    [super dealloc];
}
@end
