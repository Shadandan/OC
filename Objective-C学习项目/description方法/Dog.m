//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/31.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(NSString*)description{
    NSString *str=[NSString stringWithFormat:@"年龄是:%d  颜色是:%@", _age,_color];
    return str;
}
+(NSString*)description{
    //类方法不能访问实例变量,所以下面的方法是错误的
    //NSString *str=[NSString stringWithFormat:@"年龄是:%d  颜色是:%@", _age,_color];
    return @"这是description类方法";
}
@end
