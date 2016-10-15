//
//  main.m
//  block
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"
int p=30;

typedef void (^NewBlock)();
NewBlock test(){
    NewBlock nb=^{
        NSLog(@"Hello World");
    };
    return nb;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //无参无返回值代码块声明和赋值
        void (^myblock)()=^{
            NSLog(@"hello world");
        };
        myblock();//代码块的调用
        //定义代码块类型（别名）
        typedef void (^Block)();
        Block b1;
        b1=^{
            NSLog(@"hello world2");
        };
        b1();
        //定义带参数有返回值的代码块类型返回值类型是int，有两个int类型的参数
       typedef int (^NewType1)(int,int);
        NewType1 nt1=^(int a,int b){
            return a+b;
        };
        int s=nt1(12,23);
        NSLog(@"s=%d",s);
        
        
        
        int m=10;
        __block int n=20;
        NSLog(@"m=%d  地址为%p",m,&m);//m=10  地址为0x7fff5fbff7a0栈区
        NSLog(@"n=%d  地址为%p",n,&n);//n=20  地址为0x7fff5fbff798栈区
        NSLog(@"p=%d  地址为%p",p,&p);//p=30  地址为0x1000012a8常量区
        void (^block1)()=^{
            NSLog(@"代码块内部m=%d  地址为%p",m,&m);//代码块内部m=10  地址为0x100600028堆区
            n=200;
            NSLog(@"代码块内部n=%d  地址为%p",n,&n);//代码块内部n=200  地址为0x100200068堆区
            p=300;
            NSLog(@"代码块内部p=%d  地址为%p",p,&p);//代码块内部p=300  地址为0x1000012a8常量区
            int m=40;
            NSLog(@"代码块内部新定义的m=%d  地址为%p",m,&m);//代码块内部新定义的m=40  地址为0x7fff5fbff6ec栈区
        };
        block1();
        NSLog(@"m=%d  地址为%p",m,&m);// m=10  地址为0x7fff5fbff7a0栈区
        NSLog(@"n=%d  地址为%p",n,&n);//n=200  地址为0x1002027e8堆区
        NSLog(@"p=%d  地址为%p",p,&p);//p=300  地址为0x1000012a8常量区
        
        
        NewBlock b=test();
        b();
        
        
        person *p=[person new];
        [p test:^{
            NSLog(@"XXXXXX");
        }];
        [p test2:^{
            NSLog(@"XXXXXX2");
        }];
    
    }
    return 0;
}
