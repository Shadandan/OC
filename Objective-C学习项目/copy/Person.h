//
//  Person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//@property(nonatomic,retain)NSString *name;
@property(nonatomic,copy)NSString *name;
-(void)dealloc;
@end
