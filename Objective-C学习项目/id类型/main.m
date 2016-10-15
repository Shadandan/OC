//
//  main.m
//  id类型
//
//  Created by shadandan on 16/5/2.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSObject *obj=[Dog new];
        [(Dog *)obj run];//狗在跑！
        id obj2=[Animal new];
        [obj2 run];//动物在跑！
        id obj3=[Dog new];
        [obj3 run];//狗在跑！
    }
    return 0;
}
