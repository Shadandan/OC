//
//  ViewController.m
//  NSString的copy演示
//
//  Created by shadandan on 16/6/15.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建一个字符串
    NSString *str=@"abc";
    NSLog(@"str=%@,addr=%p",str,str);
    NSString *str2=[str copy];//不可变的对象    copy     产生的也是不可变的副本
                              //不可变的对象 mutableCopy 产生的是可变的对象副本
                              //可变的对象     copy      产生的是不可变的副本
                              //可变的对象   mutableCopy 产生的是可变的副本
    NSMutableString *str3=[str mutableCopy];
    [str3 appendString:@"xxxxx"];
    NSLog(@"str3=%@",str3);//abcxxxxx
    
    NSString *str4=[NSString stringWithFormat:@"abc"];
    NSLog(@"str4 addr=%p,str4.retainCount=%lu",str4,str4.retainCount);//1,str4 addr=0xa000000006362613
    NSString *str5=[str4 copy];
    NSLog(@"str5 addr=%p",str5);//str5 addr=0xa000000006362613 一个不可变的副本没有重新分配内存空间，这是浅拷贝，只是拷贝了地址，并没有重新申请内存空间源对象和副本对象引用计数相同，在原来基础上+1
    NSLog(@"str5.retainCount=%lu",str5.retainCount);//2
    NSLog(@"str4.retainCount=%lu",str4.retainCount);//2
    NSMutableString *str6=[str4 mutableCopy];
    NSLog(@"str6 addr=%p",str6);//str6 addr=0x7fd12b44fb30 生成可变的副本，重新分配内存空间，这是深拷贝，只
    NSLog(@"str6.retainCount=%lu",str6.retainCount);//str6.retainCount=1 开辟新空间副本对象引用计数为1
    NSLog(@"str4.retainCount=%lu",str4.retainCount);

    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
