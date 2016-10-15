//
//  Person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/27.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,assign)int age;
//自定义一个构造方法
-(instancetype)initWithAge:(int) age;
+(instancetype)personWithAge:(int)age;
+(instancetype)person;
-(void)dealloc;
@end
