//
//  main.m
//  沙盒sandbox
//
//  Created by shadandan on 16/6/14.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取根目录 mac下是用户家目录 ios下是模拟器目录下应用程序沙盒的根目录
        //1）沙盒根目录
        NSString *sandBoxPath=NSHomeDirectory();
        NSLog(@"%@",sandBoxPath);///Users/SDD
        //2)Document目录 返回绝对路径 第一个参数为NSDocumentDirectory表示要获取沙盒的document目录  还可以获取cache目录NSCacheDirectory  和Library目录NSLibraryDirectory
        NSArray *paths= NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSLog(@"paths=%@",paths);//paths=("/Users/SDD/Documents")mac下是返回用户的document目录，ios是返回沙盒document目录
        
        //在document目录下创建新的preference文件夹，并保存1.txt文件
        NSString *filePath=[paths lastObject];
        NSString *str =[filePath stringByAppendingPathComponent:@"preferences/1.txt"];
        
        NSLog(@"%@",str);
    }
    return 0;
}
