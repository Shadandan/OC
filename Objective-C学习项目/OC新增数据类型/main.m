//
//  main.m
//  OC新增数据类型
//
//  Created by shadandan on 16/2/23.
//  Copyright © 2016年 shadandan. All rights reserved.
//
//Boolean用来存放逻辑值：真 true 1，假 false 0
//BOOL用来存放逻辑值：真 YES 1，假 NO 0

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Boolean flag=true;
        if (flag) {
            printf("flag=%d\n",flag);
        }
        BOOL flag2=YES;
        printf("flag2=%d\n",flag2);
    }
    return 0;
}
