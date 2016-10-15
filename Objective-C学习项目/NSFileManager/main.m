//
//  main.m
//  NSFileManager
//
//  Created by shadandan on 16/6/14.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filePath=@"/Users/SDD/Desktop/arr.plist";
        NSString *filePath2=@"/Users/SDD/Desktop";
        // NSFileManager用于判断
        //1)判断文件是否存在
        //创建文件管理对象，调用defaultManager创建一个文件管理的单例对象
        NSFileManager *fm=[NSFileManager defaultManager];
        BOOL isYES=[fm fileExistsAtPath:filePath];//YES存在,NO不存在
        NSLog(@"-->%d",isYES);//1
        if(isYES){
            BOOL isDir;
            //2)判断是否是一个目录
            [fm fileExistsAtPath:filePath isDirectory:&isDir];
            if (isDir) {
                NSLog(@"这是一个目录");
            }
            else{
                NSLog(@"这不是一个目录");//这不是一个目录
            }
        }
        //3)判断文件是否可读
        isYES=[fm isReadableFileAtPath:filePath2];
        //4)判断文件是否可写
        isYES=[fm isWritableFileAtPath:filePath2];
        //5)是否可删除
        isYES=[fm isDeletableFileAtPath:filePath];
        NSLog(@"-->%d",isYES);//1
        
        //获取文件的信息（属性）
        NSDictionary *dict=[fm attributesOfItemAtPath:filePath error:nil];
        NSLog(@"%@",dict);
        /*
         {
         NSFileCreationDate = "2016-06-13 08:07:27 +0000";
         NSFileExtensionHidden = 0;
         NSFileGroupOwnerAccountID = 20;
         NSFileGroupOwnerAccountName = staff;
         NSFileHFSCreatorCode = 0;
         NSFileHFSTypeCode = 0;
         NSFileModificationDate = "2016-06-13 08:07:27 +0000";
         NSFileOwnerAccountID = 501;
         NSFileOwnerAccountName = SDD;
         NSFilePosixPermissions = 420;
         NSFileReferenceCount = 1;
         NSFileSize = 258;
         NSFileSystemFileNumber = 9341652;
         NSFileSystemNumber = 16777220;
         NSFileType = NSFileTypeRegular;
         }

         */
        //获取指定目录下文件及子目录
        //使用递归的方式获取当前目录及子目录下的所有的文件及文件夹
        NSArray *subPaths=[fm subpathsAtPath:filePath2];
        NSLog(@"subPaths=%@",subPaths);//"\U901a\U8baf\U5f55-main.doc"
        //subPathsOfDirectoryAtPath 不是使用递归的方式获取的,结果是和subpathsAtPath一样的
        [fm subpathsOfDirectoryAtPath:filePath2 error:nil];
        //获取指定目录下的目录和文件（不再获取后代路径）
        subPaths=[fm contentsOfDirectoryAtPath:filePath2 error:nil];
        NSLog(@"%@",subPaths);
        
        //创建目录
        NSString *createDirPath=@"/Users/SDD/DeskTop/aaa";
        //createDirectoryAtPath:@"路径" withIntermediateDirectories:YES/NO 创建路径的时候，是否级联创建目录 attributes:属性的字典 error:错误对象
        isYES=[fm createDirectoryAtPath:createDirPath withIntermediateDirectories:NO attributes:nil error:nil];
        if (isYES) {
            NSLog(@"创建目录成功");
        }
        
        //创建文件
        NSString *str=@"每当我错过一个女孩，我就在山上放一块砖";
        //fm createFileAtPath:@"路径" contents:NSData类型的数据attributes:文件的属性字典
        //创建NSData  一个处理二进制数据的类
        NSData *data=[str dataUsingEncoding:NSUTF8StringEncoding];
        createDirPath=@"/Users/SDD/DeskTop/aaa/love.txt";
        isYES=[fm createFileAtPath:createDirPath contents:data attributes:nil];
        if (isYES) {
            NSLog(@"创建文件成功");
        }
        //拷贝文件
        NSString *targetPath=@"/Users/SDD/DeskTop/aaa/ccc/love.txt";
        [fm copyItemAtPath:createDirPath toPath:targetPath error:nil];
        //移动文件
        [fm moveItemAtPath:createDirPath toPath:targetPath error:nil];
        //删除文件
        [fm removeItemAtPath:targetPath error:nil];
        
        
        
        
        
        
    }
    return 0;
}
