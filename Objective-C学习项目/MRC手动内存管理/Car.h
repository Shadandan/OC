//
//  Car.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    
    @public
    int _speed;
}
-(void)setSpeed:(int)speed;
-(void)run;
-(void)dealloc;
@end
