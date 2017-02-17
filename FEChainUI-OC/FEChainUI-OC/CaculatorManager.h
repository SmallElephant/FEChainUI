//
//  CaculatorManager.h
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CaculatorManager;

typedef CaculatorManager* (^CaculatorBlock)(NSInteger num);

@interface CaculatorManager : NSObject

@property (assign, nonatomic) NSInteger result;

- (CaculatorBlock)add;

- (CaculatorBlock)multi;

@end
