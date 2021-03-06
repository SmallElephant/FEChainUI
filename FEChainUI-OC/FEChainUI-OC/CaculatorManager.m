//
//  CaculatorManager.m
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "CaculatorManager.h"

@implementation CaculatorManager

- (CaculatorBlock)add {
    CaculatorBlock block = ^(NSInteger num) {
        self.result += num;
        return self;
    };
    
    return block;
}

- (CaculatorBlock)multi {
    CaculatorBlock block = ^(NSInteger num) {
        self.result *= num;
        return self;
    };
    
    return block;
}

@end
