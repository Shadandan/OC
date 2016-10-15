//
//  main.m
//  OC中的static
//
//  Created by shadandan on 16/3/18.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Dog *dog=[Dog new];
        [dog run];//10
        [dog run];//11
        [dog run];//12
        [dog run];//13
        NSLog(@"n=%d",n);//可以访问Dog.h中的全局静态变量，不可以访问Dog.m中的静态变量，因为导入了Dog.h头文件，不可以访问Dog.h和Dog.m中的普通全局变量
        NSLog(@"Hello, World!");
    }
    return 0;
}
