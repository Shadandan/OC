//
//  lookBabyProtocol.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;
@protocol lookBabyProtocol <NSObject>
-(void)feedBabyEat:(Baby *)baby;
-(void)HongBabySleep:(Baby *)Baby;
@end
