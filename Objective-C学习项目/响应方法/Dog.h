//
//  Dog.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/2.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
@interface Dog : Animal
-(void)eat;
-(void)eat:(NSString *)DogName andfoodName:(NSString *)FoodName;
@end
