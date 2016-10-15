//
//  main.m
//  类方法
//
//  Created by shadandan on 16/3/16.
//  Copyright © 2016年 shadandan. All rights reserved.
/*
 类方法：+开头的方法（定义的过程和对象方法相同，只不过以+开头）//不需要创建对象，可以直接用类名访问方法，节省内存空间
 类方法的调用：[类名 方法名];
 说明：
 类方法可以和对象方法同名，不影响使用
 类方法可以从父类继承而来，子类可以重写类方法
 在类方法里使用了self，这个self执行类对象class object，而不是实例对象instance Object
 注意事项：
 1）类方法不能访问类的成员变量
 2）对象方法调用自身或其他对象的方法
    a）在当前对象方法中创建对象（可以是当前类的实例对象也可以是其他类的实例对象），使用新创建的对象调用对象方法
    b）可以使用self
    c)对象作为方法的参数传递过来，可以使用传递过来的对象调用该对象的方法
    在类方法中也可以调用自己或其他类方法
    a）直接使用本类（其他类）类名
    b）可以使用self
 3）在类方法中可以调用对象方法（通过将对象作为类方法的参数传递过来的方式）
 4）可以在类方法中创建类的对象
 5）类方法不能调用自己，会造成死循环
 类方法的应用场景：该方法不需要使用成员变量

 
 */

#import <Foundation/Foundation.h>
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *ca=[Calculator new];
        int result=[Calculator add:12 andNum2:23];
        NSLog(@"result=%d",result);
    }
    return 0;
}
