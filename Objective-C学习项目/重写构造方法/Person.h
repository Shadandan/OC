//
//  Person.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/3.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}
-(instancetype)init;
-(instancetype)initWithName:(NSString *)name andAge:(int)age;
@end
