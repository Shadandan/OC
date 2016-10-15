//
//  main.m
//  protocol的代理模式
//
//  Created by shadandan on 16/6/11.
//  Copyright © 2016年 shadandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "BaoMu.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BaoMu *baomu=[BaoMu new];
        Baby *baby=[Baby new];
        baby.bm=baomu;
        baby.blood=30;
        baby.sleep=20;
        [baby wantEat];
        [baby wantSleep];
        
    }
    return 0;
}
