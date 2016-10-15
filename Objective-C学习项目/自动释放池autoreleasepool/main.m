//
//  main.m
//  自动释放池autoreleasepool
//
//  Created by shadandan on 16/5/27.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[Person person];//注意此时不能方法自动释放池的外部，放外部就相当于在自动释放池外部调用autorelease了，这种快速创建对象并加入自动释放池的方式很常见，例如
        //NSArray *array=[NSArray array];
        //NSDictionary *dic=[NSDictionary dictionary];
        //NSString *str=[NSString stringWithFormat:@"aaa"];
        
        
        
        
        //创建一个Person类，通过重写构造方法实现创建学生对象的时候指定默认的年龄。
        Person *p2=[Person personWithAge:28];
        NSLog(@"p2.age=%d",p2.age);
    }
    return 0;
}
