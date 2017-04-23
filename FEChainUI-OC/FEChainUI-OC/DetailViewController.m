//
//  DetailViewController.m
//  FEChainUI-OC
//
//  Created by keso on 2017/4/23.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "DetailViewController.h"
#import "FEHeaderView.h"
#import "UIButton+FEChain.h"

#define Button [UIButton buttonWithType:UIButtonTypeCustom]

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = Button.position(CGRectMake(100, 400, 100, 30)).bgColor([UIColor grayColor]).title(@"Button");
    [self.view addSubview:button];
    
//    FEHeaderView *view = [[FEHeaderView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
//    
//    view.bgColor([UIColor grayColor]).borderWidth(3.0).borderColor([UIColor redColor]);
//    
//    [self.view addSubview:view];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"Dealloc Class  %@",[self class]);
}

#pragma mark - Public

#pragma mark - Private

#pragma mark - Accessors

#pragma mark - Request

@end
