//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/10.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"
#import "Person_work.h"
@interface Person()//定义Person的一个延展，定义在.m文件中的类扩展中的方法是私有的，因为.h文件中没有这个方法，这种在以后的开发中常见。
{
    float _weight;
}
-(void)run;
@end


@implementation Person
-(void)run{//Person类延展的run方法的实现，私有的方法,不能直接调用所以利用test方法调用，类延展的方法要在待扩展的类的实现里实现，不用新建立一个类延展的实现
    NSLog(@"延展的run方法%.2f",_weight);
}
-(void)work{//Person类延展的work方法的实现
    NSLog(@"延展的work方法%d",_height);
}
-(void)test{
    [self run];
}

@end



