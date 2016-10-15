//
//  main.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/4/1.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //
        Person *p=[Person new];
        p.age=18;
        p.name=1;
        NSLog(@"%d",p.age);//18
        NSLog(@"%d",p->_age);//0
        NSLog(@"%d",p->_name);//1
        NSLog(@"%d",p.name);//0
        p.weight=@"123";
        NSLog(@"%@",p->_weight);//0
    }
    return 0;
}