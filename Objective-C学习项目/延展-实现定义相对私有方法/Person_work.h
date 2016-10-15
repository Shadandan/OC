//
//  Person_work.h------Person的延展
//  Objective-C学习项目
//
//  Created by shadandan on 16/6/10.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Person.h"

@interface Person ()//定义在.h中的类扩展的方法是公有的
{
    int _height;
}
-(void)work;
@end
