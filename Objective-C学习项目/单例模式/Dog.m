//
//  Dog.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Dog.h"
#import "SingletonTools.h"
@implementation Dog
-(void)run{
    SingletonTools *st=[SingletonTools shareInstance];
    NSLog(@"st.num=%d,st.text=%@",st.num,st.text);
}
@end
