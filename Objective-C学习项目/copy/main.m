//
//  main.m
//  copy
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1=[Person new];
        NSMutableString *str=[NSMutableString string];
        [str appendString: @"张三"];
        p1.name=str;
        [str appendString:@"李四"];
        NSLog(@"p1.name=%@",p1.name);//p1.name=张三李四，当赋值完姓名后在后面修改可变字符串会影响名字的值，不合理，因此，此时@property的参数不能为retain，应该为copy，这样给name赋值完该值就是不可改变的了还是p1.name=张三
        [p1 release];
        
        
        //产生一个副本对象
        //1）创建一个类Dog
        //2）遵守NSCoping协议
        //3)实现协议中声明的方法
        //4)[对象 copy];
        
        Dog *jd=[Dog new];
        jd.speed=230;
        jd.legNum=4;
        Dog *byd=[jd copy];//实际调用的是copyWithZone方法，自定义对象的拷贝都是深拷贝
        NSLog(@"byd.speed=%d,byd.legNum=%d",byd.speed,byd.legNum);

    }
    return 0;
}
