//
//  Cinema.m
//  Objective-C学习项目
//
//  Created by shadandan on 16/5/4.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import "Cinema.h"
#define ROW 7//排数
#define COL 15//列数
//定义一个全局变量保存编号
int selectNo;
@implementation Cinema
-(instancetype)initWithCinemaName:(NSString *)name{
    if (self= [super init]) {
        //给电影院初始化个名字
        _cinemaName=name;
        //给电影票的数组初始化
        for (int i=0; i<5; i++) {
            MovieTicket *mvticket=[MovieTicket new];
            //给对象赋值
            mvticket.name=[NSString stringWithFormat:@"变形金刚%02d",i+1];
            mvticket.longTime=120;
            mvticket.actor=@"a/b/c/d";
            mvticket.director=@"e";
            mvticket.no=i+1;
            mvticket.showTime=[NSString stringWithFormat:@"200%d-11-11",i+1];
            mvticket.startTime=[NSString stringWithFormat:@"1%d:00",i+1];
            mvticket.price=9.9f;
            mvticket.place=[NSString stringWithFormat:@"影厅%02d",i+1];
            tickets[i]=mvticket;
        }
    }
    return self;
}
//开始购票
-(void)buyTicket{
    NSLog(@"开始购票");
    //显示正在上映的电影
    [self list];
}
//显示正在上映的电影
-(void)list{
    NSLog(@"显示正在上映的电影");
    /*
     编号    名称
     主演    开始时间
     导演    时长
     上映时间
     */
    for(int i=0;i<5;i++){
        NSLog(@"\n\n 编号：%d  名称：%@\n  主演：%@    开始时间：%@\n  导演：%@   时长：%d\n上映时间：%@ \n\n",tickets[i].no,tickets[i].name,tickets[i].actor,tickets[i].startTime,tickets[i].director,tickets[i].longTime,tickets[i].showTime);
    }
    //提示让用户选择影片
    [self selectMovie];
}
//选择电影
-(void)selectMovie{
    NSLog(@"选择影片");
    printf("请选择要观看的电影编号：\n");
    int num;
    scanf("%d",&num);
    if (num<0||num>5) {
        return;
    }
    selectNo=num;
    NSLog(@"你已经选择了影片：%@",tickets[selectNo-1].name);
    [self selectRow];
}
//选择排数
-(void)selectRow{
    printf("当前影厅共有：%d排，每排有%d个座位\n",ROW,COL);
    for (int i=0; i<=ROW; i++) {
        for (int j=0; j<=COL; j++) {
            if (i==0) {
                printf("%02d ",j);
            }
            else if(j==0){
                printf("%02d ",i);
            }
            else{
                printf(" + ");
            }
        }
        printf("\n");
    }
    printf("请选择排数：\n");
    int num;
    scanf("%d",&num);
    if (num<0||num>7) {
        return;
    }
    tickets[selectNo-1].rowNum=num;
    printf("您选择的排数是%d，请选择座位号：\n",num);
    [self selectCol];
    
}
//选择座位号
-(void)selectCol{
    int num;
    scanf("%d",&num);
    if (num<0||num>15) {
        return;
    }
    tickets[selectNo-1].colNum=num;
    NSLog(@"\n\n 您选择的影片是：%@ \n 开始时间：%@\n  影厅：%@    第%d排%d座 \n票价：%.2f",tickets[selectNo-1].name,tickets[selectNo-1].startTime,tickets[selectNo-1].place ,tickets[selectNo-1].rowNum,tickets[selectNo-1].colNum,tickets[selectNo-1].price);
    printf("请确认：1.确认无误 0.取消\n");
    int flag;
    scanf("%d",&flag);
    if (flag) {
        [self pay];
    }
    else
        return;
    
}
//开始支付
-(void)pay{
    NSLog(@"开始付款");
    [self printTicket];
}
//出票（打印票）
-(void)printTicket{
    NSLog(@"出票");
}
@end
