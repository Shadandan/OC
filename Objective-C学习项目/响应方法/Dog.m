//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/2.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)eat{
    NSLog(@"狗在吃");
}
-(void)eat:(NSString *)DogName andfoodName:(NSString *)FoodName{
    NSLog(@"%@在吃%@",DogName,FoodName);
}
@end
