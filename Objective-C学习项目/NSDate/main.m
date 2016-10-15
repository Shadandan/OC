//
//  main.m
//  NSDate
//
//  Created by shadandan on 16/6/14.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建时间对象
        //获取当前时间
        NSDate *d1=[NSDate date];
        //格林威治时间，0时区的时间，北京时间在当前时间增加8个小时
         NSLog(@"%@",d1);
        
        
        //格式化日期 NSDateFormatter
        NSDateFormatter *formatter=[NSDateFormatter new];
        //设置日期的显示格式
        //yyy表示四位的年份
        //MM表示2位的月份
        //dd表示2位的天数
        //HH表示24小时制的小数   hh表示12小时制
        //mm表示2位的分钟数
        //ss表示2位的秒数
        formatter.dateFormat=@"yyyy年MM月dd日 HH:mm:ss";
        //格式化日期
        NSString *dateStr=[formatter stringFromDate:d1];
        NSLog(@"%@",dateStr);
        
        //计算明天的此刻
        NSTimeInterval t=60*60*24;//NSTimeInterval就是double类型的别名
        
        NSDate *tom=[NSDate dateWithTimeIntervalSinceNow:t];
        //格式化显示时间
        NSString *timeStr=[formatter stringFromDate:tom];
        NSLog(@"timeStr=%@",timeStr);
        
        //NSCalendar日期类，可以帮我们快速地获取年月日时分秒信息        NSDate *d=[NSDate new];
        NSCalendar *cal=[NSCalendar currentCalendar];
        //创建日期对象
        //components: 获取日期的哪些部分fromDate:日期对象
        NSDateComponents *coms=[cal components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:d1];
        NSLog(@"year:%ld,month:%ld,day:%ld",coms.year,coms.month,coms.day);
        
    }
    return 0;
}
