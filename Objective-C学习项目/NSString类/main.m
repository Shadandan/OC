//
//  main.m
//  NSString类
//
//  Created by shadandan on 16/3/14.
//  Copyright © 2016年 shadandan. All rights reserved.
/*  NSString类是OC中字符串处理的类之一
//  1.创建字符串的四种方法
//  2.计算NSString字符串的长度
    int len=[s length];
    1)字符串是纯英文的
    2)字符串是纯中文的
 

*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个字符串第一种方法
        NSString *s=@"ljdjhdjkh";
        //输出一个字符串
        NSLog(@"s=%@",s);
        //int len=[s length];//会有警告length是无符号长整型的
        NSUInteger len=[s length];//计算NSString字符串的长度，调用NSString的length方法
        NSLog(@"s长度为%ld",len);//9
        // 创建一个字符串第二种方法
        NSString *s1=[NSString new];
        s1=@"是滴是滴";
        NSLog(@"s1=%@",s1);
        len=[s1 length];
        NSLog(@"s1长度为%ld",len);//4，OC中把中文当成一个字符，在C语言中一个汉字当成3个字符
        //创建一个字符串第三种方法，格式化创建字符串
        for (int i=0; i<5; i++) {
            NSString *imgName=[NSString stringWithFormat:@"xxxxxxx%02d.jpg",i];
            NSLog(@"%@",imgName);
        }
        //创建一个字符串第四种方法，用一个已经存在的字符串创建一个新的字符串
        NSString *s2=[[NSString alloc] initWithString:s1];
        NSLog(@"s2=%@",s2);
        NSLog(@"Hello, World!");
    }
    return 0;
}
