//
//  main.m
//  protocol
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[Person new];
        [p eat];
        [p work];
        NSLog(@"Hello, World!");
    }
    return 0;
}
