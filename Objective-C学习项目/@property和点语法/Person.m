//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/4/1.
//  Copyright © 2016年 shadandan. All rights reserved.
//  @synthesize相当于为该属性进行set、get方法的实现

#import "Person.h"

@implementation Person
@synthesize age;//@synthesize相当于age属性进行set、get方法的实现，生成默认的age属性，没有操作_age属性
//@synthesize name;
//两个同类型的实例变量可以简化成@synthesize age,name;
//指定操作实例变量的@synthesize
//格式：@synthesize 方法名=实例变量名
@synthesize name=_name;//实际操作的是_name属性，不会再生成name属性了
@end
