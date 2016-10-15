//
//  main.m
//  NSDictionary
//
//  Created by shadandan on 16/6/13.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1）创建空字典
        NSDictionary *dict1=[NSDictionary dictionary];
        //2)创建只有一组键值对的字典，字典的key值和value值必须都是对象
        NSDictionary *dict2=[NSDictionary dictionaryWithObject:@"张三" forKey:@"zs" ];
        //3)创建多组键值对
        NSDictionary *dict3=[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"k1",@"value2",@"k2", nil];
        NSLog(@"%@",dict3);//{k1 = value1; k2 = value2;}
        //4）快速创建一个字典,key值不能重复，如果重复，后输入的不能存储进去
        //@{,,key值:value值,,,};
        NSDictionary *dict4 =@{@"zs":@"zhangsan",@"ls":@"lisi"};
        NSLog(@"%@",dict4);
        //5)获取字典长度
        NSLog(@"%lu",dict4.count);//2
        //6）根据key值取出value值
        NSString *str=[dict4 objectForKey:@"ls"];
        NSLog(@"%@",str);//lisi
        //7)字典的遍历
        //第一步：获取所有的key
        //第二步：根据key获取value
        for (NSString *key in dict4) {
            NSLog(@"key=%@,value=%@",key,[dict4 objectForKey:key]);
            
        }
        //
        [dict4 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"%@-->%@",key,obj);
        }];
        //简便方法获取元素
        NSLog(@"%@",dict4[@"ls"]);//lisi
        
        //把字典保存到文件中
        BOOL isWrite=[dict4 writeToFile:@"/Users/SDD/Desktop/dict.plist" atomically:YES];
        if(isWrite){
            NSLog(@"写入成功");
        }
        else{
            NSLog(@"写入失败");
        }
        //从文件中读取字典
        NSDictionary *readDict=[NSDictionary dictionaryWithContentsOfFile:@"/Users/SDD/Desktop/dict.plist"];
        NSLog(@"%@",readDict);
    }
    return 0;
}
