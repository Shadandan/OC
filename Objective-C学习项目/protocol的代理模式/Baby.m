//
//  Baby.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Baby.h"
#import "BaoMu.h"
@implementation Baby
-(void)wantEat{
    NSLog(@"婴儿在哭");
    if([self.bm respondsToSelector:@selector(feedBabyEat:)]){//如果代理保姆实现了协议中的这个方法，则调用
        //保姆要喂他吃
        [self.bm feedBabyEat:self];//把自己作为参数传过去
    }
    
}
-(void)wantSleep{
    NSLog(@"婴儿在哭");
    //保姆要哄他睡觉
    [self.bm HongBabySleep:self];
}
@end
