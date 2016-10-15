//
//  KLine.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "KLine.h"

@implementation KLine
//set方法的实现
-(void)setMinPrice:(float)minPrice{
    _minPrice=minPrice;
    _avPrice=(_minPrice+_maxPrice)/2;//当最低价格改变时实时更新平均价格
}
-(void)setMaxPrice:(float)maxPrice{
    _maxPrice=maxPrice;
    _avPrice=(_minPrice+_maxPrice)/2;
}
-(void)setAvPrice:(float)avPrice{
    _avPrice=avPrice;
}
//get方法的实现
-(float)minPrice{
    return _minPrice;
}
-(float)maxPrice{
    return _maxPrice;
}
-(float)avPrice{
    return _avPrice;
}
@end
