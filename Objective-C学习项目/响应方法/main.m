//
//  main.m
//  响应方法
//
//  Created by shadandan on 16/5/3.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //
        Animal *ani=[Dog new];
        if([ani respondsToSelector:@selector(eat:andfoodName:)]){
            // 带两个参数的响应方法
            [ani performSelector:@selector(eat:andfoodName:) withObject:@"八公" withObject:@"三明治"];
        }
    }
    return 0;
}
