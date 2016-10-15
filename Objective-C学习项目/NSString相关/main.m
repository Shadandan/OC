//
//  main.m
//  NSString相关
//
//  Created by shadandan on 16/6/12.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1=@"abc";
        NSString *str2=@"Acd";
        NSComparisonResult result= [str1 compare:str2];
        //比较的时候，不区分大小写
        NSComparisonResult result2= [str1 compare:str2 options:NSCaseInsensitiveSearch];
        //比较的时候，不区分大小写且根据字符个数进行比较
        NSComparisonResult result3= [str1 compare:str2 options:NSCaseInsensitiveSearch |NSNumericSearch];
        switch (result) {
            case NSOrderedAscending:
                NSLog(@"str1<str2升序");
                break;
            case NSOrderedDescending:
                NSLog(@"str1>str2降序");
                break;
            case NSOrderedSame:
                NSLog(@"str1==str2");
                break;
            default:
                break;
        }
        NSString *str3=[NSString stringWithFormat:@"abc"];
        if(str1==str3){//此时比较的是地址，所以==不能判断字符串内容是否真正相等
            NSLog(@"相等");
        }
        else{
            NSLog(@"不相等");//不相等
        }
        if([str1 isEqualToString:str3]){//此判断字符串内容是否真正相等用isEqualToString
            NSLog(@"相等");//相等
        }
        else{
            NSLog(@"不相等");
        }
        
        NSString *url=@"https://ios.itcast.cn";
        //检测这个字符串的前缀是否以http://或https://开头
        if([url hasPrefix:@"http://"]||[url hasPrefix:@"https://"]){
            NSLog(@"这是一个网址");
        }
        else{
            NSLog(@"这不是一个网址");
        }
        //判断是否是图片，通过判断后缀是否是.jpg或.png或.jpeg或.gif
        NSString *imgName=@"xxxx.jpg";
        if ([imgName hasSuffix:@".jpg"]||[imgName hasPrefix:@".png"]||[imgName hasPrefix:@".jpeg"]||[imgName hasPrefix:@".gif"]) {
            NSLog(@"是一张图片");
        }
        else{
            NSLog(@"不是一张图片");
        }
        //字符串的查找，首次出现的位置
        NSString *str4=@"shgsjiosldkjadfjadkfjdlkja";
        NSString *str5=@"ios";
        //查找str5在str4中首次出现的位置
        NSRange range=[str4 rangeOfString:str5];
        if(range.location!=NSNotFound){
            NSLog(@"%lu,%lu",range.location,range.length);//5，3   range.location表示首次出现的位置，range.length表示字符串长度
        }
        else{
            NSLog(@"没有找到这个字符串!");
        }
        
        //NSString 写入文件
        NSString *str=@"zhangsanfeng";
        NSError *err;//error对象
        [str writeToFile:@"/Users/SDD/Dekstop/str.txt" atomically:YES encoding:NSUTF8StringEncoding error:err];
        //writeToFile方法如果写入成功则error=nil，否则写入失败
        if(err!=nil){
            NSLog(@"写入失败%@"，err);
        }
        else{
            NSLog(@"写入成功");
        }
        //读取
        str =[NSString stringWithContentsOfFile:@"/Users/SDD/Dekstop/str.txt" encoding:NSUTF8StringEncoding error:&err];
        if (err!=nil) {
            NSLog(@"读取失败");
        }
        else{
            NSLog(@"读取成功");
            NSLog(@"%@",str);//zhangsanfeng
        }
        
        
        //通过URLWithString构建路径
        //写入本地文件,地址要加file://
        //还可以构建路径，调用手机系统程序@"tel://10086"或@"sms://10086"
        NSURL *url=[NSURL URLWithString:@"file:///Users/SDD/Dekstop/url.txt"];
        if ([str writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil]) {
            NSLog(@"写入成功");
        }
        //通过fileURLWithPath获取本地文件路径
        NSURL *url1=[NSURL fileURLWithPath:@"/Users/SDD/Dekstop/url.txt"];
        //读取
        str =[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",str);//zhangsanfeng

    }
    return 0;
}
