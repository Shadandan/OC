//
//  main.m
//  封装
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
/*
 不封装的缺点：当一个类把自己的属性暴露给外部时，该类就失去对属性的管理权
 封装的目的是将数据隐藏起来，只能用此类的方法才能访问或者修改数据，是面向对象设计的本质
 
 
 
 
 
 封装应用：
 股票的K线类：
 最低价格（可读写）
 最高价格（可读写）
 平均价格（只读）
 */

#import <Foundation/Foundation.h>
#import "KLine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        KLine *kline=[KLine new];
        [kline setMinPrice:30.2f];//调用set方法
        [kline setMaxPrice:45.6f];
        NSLog(@"平均价格是%.2f",[kline avPrice]);//调用get方法
    }
    return 0;
}
