//
//  SingletonTools.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "SingletonTools.h"
//定义一个全局变量，保证只有一个instance对象
static SingletonTools *instance=nil;
@implementation SingletonTools
//重写alloc release等方法,则使用alloc init方法创建对象时也不会产生新的对象，也没办法销毁该对象
-(id)copyWithZone:(NSZone *)zone{
    return self;
}
+(id)allocWithZone:(struct _NSZone *)zone{
    //线程保护
    @synchronized(self){
    if (instance==nil) {
        //调用父类的alloc
        instance=[super allocWithZone:zone];
        return instance;
    }
    }
    return instance;
    
}
-(id)retain{
    return self;
    
}
-(NSUInteger)retainCount{
    return NSUIntegerMax;
}
-(oneway void)release{
    
}
-(id)autorelease{
    return self;
}
//单例的接入点方法
+(instancetype)shareInstance{
    //目的：保证对象必须唯一，一次创建对象，任何地方都可以使用
    if( instance==nil){
        //为空时创建一个对象
        instance=[[SingletonTools alloc]init];
        return instance;
    }
    //不为空时直接返回，不创建对象
    return instance;
}
@end
