//
//  KLine.h
//  Objective-C学习项目
//
//  Created by shadandan on 16/3/17.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLine : NSObject
{
    //不写@public表示是私有的变量，只能在类中访问，外部不能访问
    float _minPrice;
    float _maxPrice;
    float _avPrice;
}
/*set方法
 注意事项和书写标准：
 1）一定是对象方法
 2）一定不能有返回值
 3）命名方式为set+成员变量名去掉_且首字母大写
 4）一定有一个参数，类型与成员变量类型相同，参数名为成员变量名去掉下划线
 5）set方法实现时一定要用形参给成员实例变量赋值
 5）作用：可以对设置的数据进行规范化，进行过滤
 */
-(void)setMinPrice:(float)minPrice;
-(void)setMaxPrice:(float)maxPrice;
-(void)setAvPrice:(float)avPrice;
/*get方法
 注意事项和书写标准：
 1)一定是对象方法
 2）一定有返回值，返回值类型和成员变量类型相同，返回值是成员变量值
 3）函数名为成员变量名去掉_
 4）一定没有参数
 */
-(float)minPrice;
-(float)maxPrice;
-(float)avPrice;
@end
