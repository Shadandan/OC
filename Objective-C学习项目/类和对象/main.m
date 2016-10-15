//
//  main.m
//  类和对象
//  @end
//  Created by shadandan on 16/3/2.
//  Copyright © 2016年 shadandan. All rights reserved.


/* 
//类：多个同种类型事物的抽象
  对象：类的具体的个体
 //类的定义分为两部分：
  1）类的声明（规定当前类的类名、属性、行为）
  @interface 类名：父类名
  {
      //定义类的属性
  }
   //类的行为，类的方法
 
  @end
  2）类的实现：实现具体行为
  @implementation 类名
  //行为的具体实现

//OC中对象创建
 格式：类名 *指针名=[类名 new];
 
 [Car new];
 做了三件事情：
 1）使用alloc方法向计算机堆区申请内存空间
 2）使用init方法给类中的每一个成员初始化值
 3）返回新申请空间的首地址
 Car *car=[Car new];
理解方式1）定义了一个Car类型的指针变量，指针变量指向新申请的内存空间
理解方式2）用Car类实例化了一个实例对象，对象的名称是car
 
//方法
 
 1）无参方法：方法类型标识符(返回值类型)方法名;  -(void)run;
 2)有参方法：方法类型标识符(返回值类型)方法名1:(参数类型)参数名;   //有一个参数的方法
            方法类型标识符(返回值类型)方法名1:(参数类型)参数名1 and:(参数类型2) 参数名2;  //有2个参数的方法，方法名是  方法名1:   and:
 
 
 
 
 多个参数方法声明格式：方法类型标识符(返回值类型)方法签名关键词:(参数类型)参数名 方法签名关键词:(参数类型)参数名  方法签名关键词:(参数类型)参数名    -(void)insertObject:(id)anObject andIndex:(NSUInteger)index andNum:(int) num;
 
 //对象方法和类方法
 1）对象方法
    以-开头；
    只能由对象来调用；
    对象方法中可以访问当前对象的成员变量
    调用格式[对象名 对象方法名];
 2）类方法
    以+开头；
    只能由类来调用；
    类方法中不能访问实例（成员）变量；
    调用格式[类名 类方法名];
    类方法好处：不依赖于对象，执行效率更高
 
 //方法的调用
 [类名或者对象名 方法名]
 
 
 //#pragma mark指令
   给代码进行分组，方便代码的查找和导航用的
   #pragma mark -     给代码导航加一条横线
 
 
 //对象作为方法的参数
 //对象作为方法的返回值
 
 */


#import <Foundation/Foundation.h>
#pragma mark Car类的声明
typedef enum{kAudi,kBenz,kBMW} Brand;//定义枚举类型
typedef struct {//结构体
    int year;
    int month;
    int day;
}Date1;
//车的类的声明
@interface Car : NSObject
{
    //类的属性
    @public//将三个属性变量都设成公有的
    int _lunzi;//轮子个数,声明成员变量时不允许初始化
    NSString *_color;
    int _speed;
    Brand _brand;//品牌为枚举类型
    
}
//类的行为,类的方法声明
-(void)run;
-(void)stop;

@end


//类的实现
@implementation Car
//方法的实现
-(void)run
{
    NSLog(@"车跑起来了");
}
-(void)stop
{
    NSLog(@"车停了");
}

@end
#pragma mark -
#pragma mark Person类的声明
@interface Person:NSObject
{
    @public
    NSString *_name;
    Date1 birthday;//结构体类型作为成员变量
    Car *_car;//Car类型的成员变量
    
    
}
-(Car*)changeBrand:(Car*) car1;//对象作为方法的参数，方法的返回值为对象类型
@end

@implementation Person
-(Car*)changeBrand:(Car*) car1
{
    NSLog(@"轮子：%d,速度：%d，颜色:%@，品牌：%d!",car1->_lunzi,car1->_speed,car1->_color,car1->_brand);
    NSLog(@"换品牌");
    car1->_brand=kAudi;
    return car1;
}
@end

#pragma mark -
#pragma mark Calculator类的声明
@interface Calculator : NSObject
{
    @public
    int _num1;//命名规范
    int _num2;
}
-(int)sum;//无参方法
-(int)sum:(int)x and:(int)y;

@end

@implementation Calculator
-(int)sum
{
    return _num1+_num2;
}
-(int)sum:(int)x and:(int)y
{
    return x+y;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建Car类型的对象
        Car *car =[Car new];
        car->_color=@"蓝色";
        car->_lunzi=3;
        car->_speed=150;
        car->_brand=kBenz;
        //调用方法
        [car run];
        [car stop];
        NSLog(@"轮子：%d,速度：%d，颜色:%@，品牌：%d!",car->_lunzi,car->_speed,car->_color,car->_brand);
        Person *person=[Person new];
        person->_name=@"SDD";
        person->_car=car;
        //第一种方法
        person->birthday=(Date1){1983,12,12};//赋值时必须进行强制类型转换，让编译器知道类型，否则数组也可以用大括号赋值，编译器会认为是数组，编译出错
        //第二种方法，定义结构体变量同时初始化
        Date1 d1={1982,7,9};
        person->birthday=d1;
        //第三种方法，逐个赋值
        person->birthday.year=1984;
        person->birthday.month=5;
        person->birthday.day=23;
        car=[person changeBrand:car];//调用以对象为参数的方法,且返回值类型也是对象类型
        NSLog(@"轮子：%d,速度：%d，颜色:%@，品牌：%d!",car->_lunzi,car->_speed,car->_color,car->_brand);
        
        //创建Calculator对象
        Calculator *ca =[Calculator new];
        ca->_num1=12;
        ca->_num2=30;
        int s=[ca sum];
        NSLog(@"s=%d",s);
        //调用有参方法
        s=[ca sum:34 and:23];
        NSLog(@"s=%d",s);
        
    }
    return 0;
}
