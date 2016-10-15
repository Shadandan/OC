//
//  Dog.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/18.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
 static int n=10;//静态全局变量可以在Dog.m中使用，非静态全局变量不可以在Dog.m中使用
//int n=0;
@interface Dog : NSObject
{
    //static int _speed;//OC中成员变量不能声明为静态
    /*
     C语言中
     已经初始化的静态变量存储在数据区
     没有初始化的静态变量存储在BSS段
     */
    int _speed;
}
//static -(void)run;方法也不能声明为静态
-(void)run;
@end
