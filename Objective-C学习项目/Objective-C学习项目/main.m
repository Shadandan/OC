//
//  main.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/2/22.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>//引入头文件
//#include <Foundation/Foundation.h>也可以
//1.import和include区别
//include和import都是引入头文件，import可以防止重复包含，include要使用预处理指令才能防止重复包含问题
//2.import和@class区别
//3.Foundation/Foundation.h是什么
//包含了大量的其他头文件，等于把OC的库文件都引过来了
///Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/Foundation.framework/Headers/Foundation.h
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //NSLog和printf的差异
        //1.NSLog会自动换行
        //2.NSLog会自动输出时间等项目信息
        //3.NSLog参数是一个NSString对象 printf函数是一个字符串常量指针
        int a=5;
        float f1=2.3f;
        double d1=3.14;
        char ch='x';
        NSLog(@"%d,%.2f,%.2f,%c",a,f1,d1,ch);
        
        char *str="张三丰";
        NSLog(@"%s",str);//打印不出来，OC中不能这样打印字符串，有自己特有的字符串表示方法
        NSString *str1=@"张三丰";//str1不能用printf打印出来
        NSLog(@"%@",str1);//打印出字符串str1
        
    };
    return 0;
}
