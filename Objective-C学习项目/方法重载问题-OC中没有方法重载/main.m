//
//  main.m
//  方法重载问题-OC中没有方法重载
//
//  Created by shadandan on 16/3/18.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person:NSObject
-(void)run:(int) num;
//-(void)run:(float)num;//错误的
-(void)run:(int)num :(int)f1;//可以不算重载，因为方法名不同，方法名是run:   :

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
