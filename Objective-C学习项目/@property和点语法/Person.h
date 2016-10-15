//
//  Person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/4/1.
//  Copyright © 2016年 shadandan. All rights reserved.
//  @property相当于对属性进行了set和get方法的声明

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    int _name;
    NSString * _weight;
}
@property int age;//相当于age属性的set、get方法声明，此时默认创建属性age，不是属性_age的
@property int name;
//如果多个成员变量类型相同可以简写成@property int age,name;
//增强版的@property
@property NSString * weight;
@end
