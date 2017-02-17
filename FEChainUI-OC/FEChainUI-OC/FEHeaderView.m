//
//  FEHeaderView.m
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "FEHeaderView.h"

@implementation FEHeaderView


- (FEHeaderBlock)bgColor {
    FEHeaderBlock block = ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
    return block;
}

- (FEHeaderAssignBlock)borderWidth {
    FEHeaderAssignBlock block = ^(CGFloat width) {
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = width;
        return self;
    };
    return block;
}

- (FEHeaderBlock)borderColor {
    FEHeaderBlock block = ^(UIColor *color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
    return block;
}

@end
