//
//  main.m
//  OC中新增的增强型的for循环
//
//  Created by shadandan on 16/2/23.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr=@[@"one",@"two",@"three"];
        for (NSString *str in arr) {
            NSLog(@"%@",str);
        }
        NSLog(@"Hello, World!");
    }
    return 0;
}
