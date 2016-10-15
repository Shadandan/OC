//
//  main.m
//  循环retain问题
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[Person new];
        Dog *d=[Dog new];
        p.dog=d;
        d.owner=p;
        [d release];
        [p release];
    }
    return 0;
}
