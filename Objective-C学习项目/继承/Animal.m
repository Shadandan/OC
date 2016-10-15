//
//  Animal.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/31.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Animal.h"
int speed=100;//纯私有的不能被子类继承也不能被子类访问
@implementation Animal
-(void)eat:(NSString*)foodName{
    NSLog(@"正在吃%@",foodName);
    [self test];//可以用self访问私有的方法
    //Animal *p=[Animal new];//这种方式也可以，但不推荐使用
    //[p test];
}
-(void)run{
    NSLog(@"动物在跑,速度是：%d",speed);
}
-(void)test{//在Person.h里面没有声明，只在Person.m里面实现的私有方法
    NSLog(@"我是私有的");
}
@end
