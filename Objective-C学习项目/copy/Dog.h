//
//  Dog.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject<NSCopying>//遵守协议，该协议有- (id)copyWithZone:(nullable NSZone *)zone;方法，需要实现
@property(nonatomic,assign)int legNum;
@property(nonatomic,assign)int speed;
@end
