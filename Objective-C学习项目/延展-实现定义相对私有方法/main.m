//
//  main.m
//  延展-实现定义相对私有方法
//
//  Created by shadandan on 16/6/10.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person_work.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[Person new];
        [p test];
        [p work];
        NSLog(@"Hello, World!");
    }
    return 0;
}
