//
//  main.m
//  匿名类
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
/*
 匿名类实质是匿名对象
 */

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Car *car=[Car new];//非匿名对象
        [Car new]->_speed=250;//[Car new]是匿名类（实际上是匿名对象）
        NSLog(@"匿名类的车速是：%d",[Car new]->_speed);//0,因为此时是重新创建了一个匿名类（对象），匿名类访问实例变量只能访问一次，以后再访问，实际是访问新的空间了
        [[Car new] run];//使用匿名类可以调用方法
        [[[Car alloc] init] run];//[[Car alloc] init]等价于[Car new]
    }
    return 0;
}
