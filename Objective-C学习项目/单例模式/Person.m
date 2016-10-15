//
//  Person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"
#import "SingletonTools.h"
@implementation Person
-(void)run{
    //创建单例对象
    SingletonTools *st=[SingletonTools shareInstance];
    //调用set方法设定值
    st.num=500;
    st.text=@"itcast";
}
@end
