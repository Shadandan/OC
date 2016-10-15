//
//  person.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "person.h"

@implementation person
-(void)test:(void (^)()) block{
    if(block!=nil){
        block();
    }
}
-(void)test2:(BlockType) block{
    if(block!=nil){
        block();
    }
}
@end
