//
//  main.m
//  OC-MRC内存管理
//
//  Created by shadandan on 16/5/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p=[Person new];
        NSUInteger count=[p retainCount];// NSUInteger是无符号long类型
        NSLog(@"count=%lu",count);//count=1
        Person *p2=p;
        count=[p retainCount];
        NSLog(@"count=%lu",count);//count=1,这种方式不会增加对象所有者引用数
        Person *p3=[p retain];
        NSLog(@"count=%lu",[p retainCount]);//count=2
        NSLog(@"count=%lu",[p3 retainCount]);//count=2
        [p release];
        count=[p retainCount];
        NSLog(@"count=%lu",count);//count=1
        [p release];
        //证明对象被释放了，在Person类 重写dealoc方法
        //Person已经挂了
        //[p run];//这句话默认不报错，如果要让他报错，要开启僵尸对象检测
        p=nil;//给对象赋空值
        [p run];//给nil发送任何消息都没效果，避免了野指针异常
        NSLog(@"--------------------------------");
        
        Person *p1=[Person new];
        Car *car=[Car new];
        p1.car=car;
        car.speed=100;
        [car release];//此时计数减1，但计数是1，不为0，所以此时不调用dealloc方法
        [p1 run];
        Car *car1=[Car new];
        car1.speed=280;
        p1.car=car1;
        [p1 run];
        [car1 release];
        [p1 release];
        
        
    }
    return 0;
}
