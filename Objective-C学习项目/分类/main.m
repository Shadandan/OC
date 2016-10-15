//
//  main.m
//  分类
//
//  Created by shadandan on 16/5/27.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+study.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p=[Person new];
        [p studyC];
        [p studyIOS];
    }
    return 0;
}
