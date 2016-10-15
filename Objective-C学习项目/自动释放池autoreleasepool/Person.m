//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/27.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype)person{
    return [[[self alloc] init] autorelease];//哪个类调用创建哪个类的对象并将其加入到自动释放池中
}
-(void)dealloc{
    NSLog(@"Person dealloc");
    [super dealloc];
}
-(instancetype)initWithAge:(int) age{
    //判断是否初始化父类成功
    if(self=[super init]){
        //初始化子类
        _age=age;
    }
    //返回self
    return self;
}
+(instancetype)personWithAge:(int)age{
    return [[[self alloc] initWithAge:age] autorelease];
}
@end
