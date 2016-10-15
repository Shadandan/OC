//
//  Ticket.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/4.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Common.h"

@interface Ticket : Common
//排数
@property int rowNum;
//座位号
@property int colNum;
//地点
@property NSString *place;
//开始时间
@property NSString *startTime;
-(void)printTicket;
@end
