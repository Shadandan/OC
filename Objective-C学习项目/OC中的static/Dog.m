//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/18.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"

@implementation Dog
//static int n=10;//全局静态变量只能在当前文件中使用
//int n=0;
-(void)run{
    static int num=10;//当局部变量声明为static时，会延长它的生命周期
    NSLog(@"num=%d",num);
    NSLog(@"n=%d",n);//可以访问Dog.h中的静态变量
    num++;
}
@end
