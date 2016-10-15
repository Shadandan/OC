//
//  main.m
//  SEL
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
        SEL s=@selector(test);//手动把test包装成SEL类型
        [p performSelector:s];//-test，响应test方法
    }
    return 0;
}
