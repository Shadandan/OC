//
//  main.m
//  description方法
//
//  Created by shadandan on 16/3/31.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Dog *dog=[Dog new];
        
        NSLog(@"Dog对象的地址%p",dog);//Dog对象的地址0x1006001e0
        NSLog(@"Dog对象%@",dog);//未重写description方法时输出结果是：Dog对象<Dog: 0x1006001e0>，实际上是调用了继承自NSObject类的description对象方法，可以对description方法进行重写，当以%@格式打印对象时会按照重写的方法进行执行
        dog->_age=3;
        dog->_color=@"white";
        NSLog(@"Dog%@",[dog class]);//Dog这是description类方法，[dog class]实际上就是指Dog类，此时调用description的类方法
    }
    return 0;
}
