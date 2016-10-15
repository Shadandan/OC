//
//  SingletonTools.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonTools : NSObject
@property(nonatomic,assign)int num;
@property(nonatomic,copy)NSString *text;
//单例的类，提供一个接入点
+(instancetype)shareInstance;
@end
