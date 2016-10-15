//
//  main.m
//  NSMutableDictionary
//
//  Created by shadandan on 16/6/13.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1)可变字典的创建
        NSMutableDictionary *dict1=[NSMutableDictionary dictionary];
        NSMutableDictionary *dict2=[NSMutableDictionary dictionaryWithCapacity:2];//指定长度，以后还是可以改变
        //2)给可变字典添加键值对
        [dict1 setValue:@"lisi" forKey:@"ls"];
        [dict1 setValue:@"zhaosi" forKey:@"zs"];
        [dict1 setValue:@"liuneng" forKey:@"ln"];//无序，键重复，添加不进去
        [dict1 setValue:@"liaoning" forKey:@"ln"];        NSLog(@"%@",dict1);
        //3)删除
        [dict1 removeObjectForKey:@"ls"];
        //[dict1 removeAllObjects];//删除全部
        NSLog(@"%@",dict1);
        //4）修改
        [dict1 setObject:@"zhaosi" forKey:@"ls"];
        NSLog(@"%@",dict1);
        //5)查找
        NSArray *arr=[dict1 allKeys];
        if([arr containsObject:@"ls"]){
             NSLog(@"存在ls的key");
        }
       
    }
    return 0;
}
