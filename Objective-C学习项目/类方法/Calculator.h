//
//  Calculator.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/16.
//  Copyright © 2016年 shadandan. All rights reserved.
/*头文件进行类的声明，.m文件进行类的实现，main.m文件是主函数（程序的入口）*/

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
//此类中没有成员变量，也就没有{}
+(int)add:(int)num1 andNum2:(int)num2;//类方法的定义
+(int)subtract:(int)num1 andNum2:(int)num2;
+(int)multiply:(int)num1 andNum2:(int)num2;
+(int)divide:(int)num1 andNum2:(int)num2;
@end
