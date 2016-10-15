//
//  Cinema.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/4.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieTicket.h"
@interface Cinema : NSObject
{
    //电影院名称
    NSString *_cinemaName;
    //票的集合
    MovieTicket *tickets[5];
}
-(instancetype)initWithCinemaName:(NSString *)name;
//开始购票
-(void)buyTicket;
//显示正在上映的电影
-(void)list;
//选择电影
-(void)selectMovie;
//选择排数
-(void)selectRow;
//选择座位号
-(void)selectCol;
//开始支付
-(void)pay;
//出票（打印票）
-(void)printTicket;
@end
