//
//  Person.h
//  OC-MRC内存管理
//
//  Created by shadandan on 16/5/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
@interface Person : NSObject
{
    Car *_car;
}
//对象被销毁的时候会自动调用该方法
-(void)setCar:(Car *)car;
-(void)dealloc;
-(void)run;
@end
