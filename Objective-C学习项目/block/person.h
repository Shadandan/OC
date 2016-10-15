//
//  person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BlockType)();
@interface person : NSObject
-(void)test:(void (^)()) block;//代码块作为方法的参数
-(void)test2:(BlockType) block;//代码块作为方法的参数，改进版
@end
