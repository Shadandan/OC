//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/3.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"

@implementation Person
//重写构造方法
-(instancetype)init{
    self=[super init];//调用父类构造方法
    if(self){//如果初始化成功，将年龄初始化为10
        _age=10;
    }
    return self;
}
//自定义构造方法
-(instancetype)initWithName:(NSString *)name andAge:(int)age{//调用父类构造方法
if(self=[super init]){//调用父类构造方法
    _name=name;
    _age=age;
    }
    return self;
}
@end
