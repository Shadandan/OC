//
//  main.m
//  Foundation框架下的其他常见结构体
//
//  Created by shadandan on 16/6/14.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // CGPoint 或NSPoint表示二维的点，NSPoint是CGPoint 的别名，包含x，y坐标
    
        //创建方式1，结构体创建方式
        CGPoint c1;
        c1.x=20;
        c1.y=100;
        //创建方式2
        CGPoint c2={10,10};
        //创建方式3
        CGPoint c3={.x=10};
        //创建方式4，OC特有的方式
        CGPoint c4=CGPointMake(10, 10);
        NSPoint np2=NSMakePoint(5, 5);
        
        //CGSize和NSSize，表示平面的面积（大小）包括width和height
        //创建方式和结构体创建方式一样
        CGSize s1={200,100};
        //OC中特有方式
        CGSize s2=CGSizeMake(100, 100);
        NSSize ns=NSMakeSize(10, 10);
        
        //CGRect和NSRect表示在平面上左上角是某个点的矩形区域包含CGPoint origin起始点和CGSize size大小
        //C语言赋值方式
        CGRect r1;
        r1.origin.x=0;
        r1.origin.y=0;
        r1.size.width=200;
        r1.size.height=80;
        
        CGRect r2={{0,0},{20,30}};
        
        //OC特有的方式
        CGRect r3=CGRectMake(10, 10, 100, 30);
        NSRect r4=NSMakeRect(10, 10, 100, 30);
        
        //获取矩形信息NSStringFromRect
        NSLog(@"r4=%@",NSStringFromRect(r4));//r4={{10, 10}, {100, 30}}
    }
    return 0;
}
