//
//  FEHeaderView.h
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FEHeaderView;

typedef FEHeaderView *(^FEHeaderBlock)(UIColor *color);

typedef FEHeaderView *(^FEHeaderAssignBlock)(CGFloat num);

@interface FEHeaderView : UIView


- (FEHeaderBlock)bgColor;

- (FEHeaderAssignBlock)borderWidth;

- (FEHeaderBlock)borderColor;

@end
