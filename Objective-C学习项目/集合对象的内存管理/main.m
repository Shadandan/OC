//
//  main.m
//  集合对象的内存管理
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建对象
        Person *p=[Person new];//retain=1
        //定义一个数组，把p放到数组中
        NSMutableArray *marr=[NSMutableArray array];
        [marr addObject:p];//retain=2，把对象添加到数组中，对象的引用计数+1，将对象从数组中移除，对象的引用计数-1
        NSLog(@"p.retainCount=%lu",p.retainCount);//p.retainCount=2
        [p release];
        //数组在销毁的时候会对对象发送一次release消息，数组先dealloc，然后数组向其中的对象也发送release消息，但对象不一定会销毁
            }
    return 0;
}
