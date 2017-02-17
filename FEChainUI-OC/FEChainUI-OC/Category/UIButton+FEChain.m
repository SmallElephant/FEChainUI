//
//  UIButton+FEChain.m
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "UIButton+FEChain.h"

@implementation UIButton (FEChain)

- (FEChainFrameBlock)position {
    FEChainFrameBlock block = ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
    return block;
}

- (FEChainColorBlock)bgColor {
    FEChainColorBlock block = ^(UIColor *color) {
        [self setBackgroundColor:color];
        return self;
    };
    return block;
}

- (FEChainStringBlock)title {
    FEChainStringBlock block = ^(NSString *str) {
        [self setTitle:str forState:UIControlStateNormal];
        return self;
    };
    return block;
}

@end
