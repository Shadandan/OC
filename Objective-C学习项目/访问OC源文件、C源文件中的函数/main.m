//
//  main.m
//  访问OC源文件、C源文件中的函数
//
//  Created by shadandan on 16/2/23.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "a.h"
void test(){
    printf("test!\n");
}
void test2();//全局声明
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        test();
        //void test2();//也可以局部声明
        test2();
        test3();
    }
    
    return 0;
}

void test2(){
    printf("test2!\n");
}
