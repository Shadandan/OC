//
//  main.m
//  异常处理
//
//  Created by shadandan on 16/2/23.
//  Copyright © 2016年 shadandan. All rights reserved.
//
/*
 @try{//此处放有可能出错的代码

 }
 @catch(NSException *exception){//捕捉具体的异常类型
 //此处放出错后我们处理的代码
 NSLog(@"%@",exception);//打印出错的信息
 }
 @catch(NSException *ne){//捕获一个比较重要的异常类型
 
 }
 @catch(id ue){//再次掷出捕获的异常
 
 }
 @finally{//不管是否有异常，这里的代码一定会执行
 printf("凤姐！\n");
 }

 */

#import <Foundation/Foundation.h>
@interface Car : NSObject
{
    //类的属性
@public//将三个属性变量都设成公有的
    int lunzi;//轮子个数,声明成员变量时不允许初始化
    NSString *color;
    int speed;
}
//类的行为,类的方法声明
-(void)run;
-(void)stop;
@end


//类的实现
@implementation Car

//缺少方法的实现

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // try catch 并不能检测所有的错误
        Car *car=[Car new];
        @try{//此处放有可能出错的代码
            [car run];
        }
        @catch(NSException *exception){//捕捉具体的异常类型
            //此处放出错后我们处理的代码
            NSLog(@"出错了,但程序不会卡死，会接着运行，给出友好的界面！");
            NSLog(@"%@",exception);//打印出错的信息
        }
        @catch(NSException *ne){//捕获一个比较重要的异常类型
            
        }
        @catch(id ue){//再次掷出捕获的异常
            
        }
        @finally{//不管是否有异常，这里的代码一定会执行
            printf("凤姐！\n");
        }
        NSLog(@"Hello, World!");
    }
    return 0;
}
