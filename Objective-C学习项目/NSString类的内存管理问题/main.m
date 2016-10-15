//
//  main.m
//  NSString类的内存管理问题
//
//  Created by shadandan on 16/5/26.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义字符串
        NSString *str1=@"abc";//在常量区
        NSString *str2=[NSString stringWithFormat:@"aaa"];//在堆区
        NSString *str3=[NSString stringWithString:@"abc"];//在常量区
        NSString *str4=[[NSString alloc] initWithFormat:@"aaa"];//在堆区
        NSString *str5=[[NSString alloc] initWithString:@"abc"];//在常量区
        NSString *str6=[[NSString alloc] init];//常量区
        //str6=@"abc";
        
        NSLog(@"str1=%@,%p,%lu",str1,str1,str1.retainCount);
        NSLog(@"str2=%@,%p,%lu",str2,str2,str2.retainCount);
        NSLog(@"str3=%@,%p,%lu",str3,str3,str3.retainCount);
        NSLog(@"str4=%@,%p,%lu",str4,str4,str4.retainCount);
        NSLog(@"str5=%@,%p,%lu",str5,str5,str5.retainCount);
        NSLog(@"str6=%@,%p,%lu",str6,str6,str6.retainCount);
    }
    return 0;
}
