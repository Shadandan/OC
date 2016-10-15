//
//  main.m
//  对象作为方法的参数连续传递
//
//  Created by shadandan on 16/3/13.
//  Copyright © 2016年 shadandan. All rights reserved.
//士兵开枪，枪打子弹
//枪以子弹做参数，士兵以枪做参数，即参数连续传递

#import <Foundation/Foundation.h>
#pragma mark 子弹类声明
@interface Bullet:NSObject
{
    @public
    NSString *_size;//
    int _bulletCount;
    
}
@end
@implementation Bullet

@end

#pragma mark抢类声明
@interface Gun:NSObject
{
    @public
    NSString *_size;//型号
}
-(void)shoot:(Bullet *) bullet;
@end
@implementation Gun

-(void)shoot:(Bullet *) bullet{
    
    if (bullet->_bulletCount>0) {
        bullet->_bulletCount--;
        NSLog(@"%@正在射击。。。",_size);
        NSLog(@"剩余子弹%d",bullet->_bulletCount);
    }
    else{
        NSLog(@"没有子弹了");
    }
   
}
@end
#pragma mark 士兵类声明
@interface Soldier:NSObject
{
    @public
    NSString *_name;
    int _life;//生命值
    int _level;//等级
}
-(void)fireByGun:(Gun *) gun andBullet:(Bullet *)bullet;//士兵开火
@end
@implementation Soldier
-(void)fireByGun:(Gun *) gun andBullet:(Bullet *)bullet{
    //让枪射击
    [gun shoot:bullet];
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Soldier *s=[Soldier new];
        s->_name=@"sdd";
        s->_life=98;
        s->_level=2;
        Gun *gun=[Gun new];
        gun->_size=@"ak47";
        Bullet *myBullet=[Bullet new];
        myBullet->_size=@"5mm口径";
        myBullet->_bulletCount=3;
        //士兵开枪
        [s fireByGun:gun andBullet:myBullet];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
