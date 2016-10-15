//
//  Dog.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/31.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    @public
    int _age;
    NSString *_color;
}
-(NSString *)description;
+(NSString *)description;
@end
