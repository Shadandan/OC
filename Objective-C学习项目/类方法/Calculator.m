//
//  Calculator.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/16.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
+(int)add:(int)num1 andNum2:(int)num2{//类方法的实现
    return num1+num2;
}
+(int)subtract:(int)num1 andNum2:(int)num2{
    return num1-num2;
}
+(int)multiply:(int)num1 andNum2:(int)num2{
    return num1*num2;
}
+(int)divide:(int)num1 andNum2:(int)num2{
    return num1/num2;
}
@end
