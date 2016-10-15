//
//  Person.m
//  OC-MRC内存管理
//
//  Created by shadandan on 16/5/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setCar:(Car *)car{
    if(_car!=car){//判断传递过来的对象是不是新对象，如果是同一个对象就不需要release了，若release会造成僵尸对象复活
        [_car release];//对旧对象做一次release，保证Person换车时，释放原来的车，若没有旧对象则没有影响，因为当_car为空时相当于[nil release]不会有反应
        _car=[car retain];//对新对象做一次retain
    }

}
-(void)dealloc{
    [_car release];
    NSLog(@"Person已经挂了");
    [super dealloc];
}
-(void)run{
   
    [_car run];
}
@end
