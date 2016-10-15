//
//  main.m
//  单例模式
/*
 对象在任何时候，都只有一个，
 
 */
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Person和Dog的run方法都处理同一个类的单例对象，一次创建对象，任何地方都可以使用
        Person *p=[Person new];
        [p run];//p中设定
        Dog *d=[Dog new];
        [d run];//d中可以直接获取值
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
