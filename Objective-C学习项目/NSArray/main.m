//
//  main.m
//  NSArray
//
//  Created by shadandan on 16/6/13.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个空数组
        NSArray *arr1=[NSArray array];
        NSLog(@"arr1=%@",arr1);//arr1=()   %@也可以用于输出一个对象
        //创建数组，只有一个元素
        NSArray *arr2=[NSArray arrayWithObject:@"1"];
        NSLog(@"arr2=%@",arr2);//arr2=(1)
        //创建数组，有多个元素,nil表示数组赋值结束
        NSArray *arr3=[NSArray arrayWithObjects:@"one",@"two",[NSNull null],@1,nil];
        NSLog(@"arr3=%@",arr3);//arr3=(one,two,"<null>",1)
        //调用对象方法，创建数组
        NSArray *arr4=[[NSArray alloc]initWithObjects:@"three",@"four", nil];
        NSLog(@"arr4=%@",arr4);//arr4=(three,four)

        //用一个数组创建另外一个数组
        NSArray *arr5=[NSArray arrayWithArray:arr3];
        NSLog(@"%ld",arr3.count);//4
        NSLog(@"%@",[arr3 objectAtIndex:3]);//1
        NSUInteger loc=[arr3 indexOfObject:@"two"];
        NSLog(@"%ld",loc);//1
        if([arr3 containsObject:@"four"]){
            NSLog(@"包含此元素");
        }
        else{
            NSLog(@"不包含");//不包含
        }
        //简化的方式定义数组
        NSArray *arr=@[@"1",@"one",@1,@"7"];
        NSLog(@"%@",arr);//(1,one,1,7)

        //用简化的方式获取数组指定位置元素
        NSString *str=arr[1];//与C语言数组元素访问形式相同
        NSLog(@"%@",str);//one
        
        
        
        
        //定义一个数组
        NSArray *arrr=@[@"one",@"two",@"three",@"four"];
        //数组的遍历
        //1)普通的方式，通过下标访问
        for(int i=0;i<arr.count;i++){
            NSLog(@"->%@",arrr[i]);
        }
        //2)快速枚举法增强for循环
        for (NSString *strr in arrr) {
            NSLog(@"-->%@",strr);
        }
        //3)使用block的方式进行访问
        [arrr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"index=%ld,obj=%@",idx,obj);
        }];
        
        
        
        
        //把数组元素连成字符串
        //[数组 componentsJoinedByString:分隔符]
        str=[arrr componentsJoinedByString:@"-"];
        NSLog(@"%@",str);//one-two-three-four
        //把字符串分割成数组
        str=@"400-800-12580";
        arr=[str componentsSeparatedByString:@"-"];
        NSLog(@"%@",[arr firstObject]);//400
        NSLog(@"%@",[arr lastObject]);//12580
        NSLog(@"%@",arr[1]);//800
        
        
        //把NSArray中的内容写入到文件中
        //.plist是一种特殊的文件格式,实际上是一个xml文档，其他后缀名也可以，第一个参数是保存到的位置，第二个参数是原子性
        BOOL isWrite=[arr writeToFile:@"/Users/SDD/Desktop/arr.plist" atomically:YES];
        if(isWrite){
            NSLog(@"写入成功");
        }
        else{
            NSLog(@"写入失败");
        }
        //从文件中读取数组
        NSArray *readarr=[NSArray arrayWithContentsOfFile:@"/Users/SDD/Desktop/arr.plist" ];
        NSLog(@"%@",readarr);//(400,800,12580)

        
    }
    return 0;
}
