//
//  Baby.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lookBabyProtocol.h"
@class BaoMu;
@interface Baby : NSObject
@property (nonatomic,strong)id <lookBabyProtocol> bm;
//血量
@property (nonatomic,assign)int blood;
//睡眠值
@property (nonatomic,assign)int sleep;
-(void)wantEat;
-(void)wantSleep;
@end
