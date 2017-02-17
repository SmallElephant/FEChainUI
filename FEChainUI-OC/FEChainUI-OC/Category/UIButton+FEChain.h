//
//  UIButton+FEChain.h
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIButton* (^FEChainFrameBlock)(CGRect frame);

typedef UIButton* (^FEChainColorBlock)(UIColor *color);

typedef UIButton* (^FEChainStringBlock)(NSString *title);

@interface UIButton (FEChain)

- (FEChainFrameBlock)position;

- (FEChainColorBlock)bgColor;

- (FEChainStringBlock)title;

@end
