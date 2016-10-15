//
//  main.m
//  继承
//
//  Created by shadandan on 16/3/31.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import  "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Animal *a=[Animal new];
        a->_age=1;
        Dog *d=[Dog new];
        [d eat:@"玉米"];
        [d run];
        [d lookHome];
        NSLog(@"Hello, World!");
    }
    return 0;
}
