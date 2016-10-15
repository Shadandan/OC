//
//  Person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
@interface Person : NSObject
//人拥有一条狗
@property(nonatomic,retain)Dog *dog;
-(void)dealloc;
@end
