//
//  Dog.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Dog : NSObject
//@property(nonatomic,retain)Person *owner;//两个都是retain会产生内存泄露问题，谁都释放不了
//狗有一个主人
@property(nonatomic,assign)Person *owner;
-(void)dealloc;
@end
