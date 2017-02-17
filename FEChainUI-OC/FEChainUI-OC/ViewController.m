//
//  ViewController.m
//  FEChainUI-OC
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorManager.h"
#import "FEHeaderView.h"
#import "UIButton+FEChain.h"

#define Button [UIButton buttonWithType:UIButtonTypeCustom]

#define HLog(...) NSLog(__VA_ARGS__)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CaculatorManager *manager = [[CaculatorManager alloc] init];
    
    manager.add(10).multi(100);
    
    NSLog(@"测试结果----%ld",manager.result);
    
    FEHeaderView *view = [[FEHeaderView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    
    view.bgColor([UIColor grayColor]).borderWidth(3.0).borderColor([UIColor redColor]);
    
    [self.view addSubview:view];
    
    UIButton *button = Button.position(CGRectMake(100, 400, 100, 30)).bgColor([UIColor grayColor]).title(@"Button");
    [self.view addSubview:button];
    
    HLog(@"ddddddd%@",@"----------");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
