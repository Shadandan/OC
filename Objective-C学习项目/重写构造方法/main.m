//
//  main.m
//  重写构造方法
//
//  Created by shadandan on 16/5/3.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p=[Person new];
        NSLog(@"%d",p->_age);//10
        Person *p2=[[Person alloc] initWithName:@"张三丰" andAge:20];
        NSLog(@"%@   %d",p2->_name,p2->_age);//10
    }
    
    return 0;
}
