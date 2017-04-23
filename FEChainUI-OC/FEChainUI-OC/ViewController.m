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

#define TKFLOAT(num) num * 10

#define TKsafetyCall(block, ...) if((block)) { block(__VA_ARGS__); }

#define ChainBlock(x,...) return ^(x value) { }

#define NER_CHAINABLE_BLOCK(x, ...) return ^(x value) {__VA_ARGS__; return self;}
#define NER_EMPTY_BLOCK(...)        return ^{__VA_ARGS__; return self;}
#define NER_OBJECT_BLOCK(...)       NER_CHAINABLE_BLOCK(id, __VA_ARGS__)
#define NER_INT_BLOCK(...)          NER_CHAINABLE_BLOCK(NSInteger, __VA_ARGS__)
#define NER_FLOAT_BLOCK(...)        NER_CHAINABLE_BLOCK(CGFloat, __VA_ARGS__)
#define NER_RANGE_BLOCK(...)        NER_CHAINABLE_BLOCK(NERRange, __VA_ARGS__)
#define NER_POINT_BLOCK(...)        NER_CHAINABLE_BLOCK(NERPoint, __VA_ARGS__)
#define NER_SIZE_BLOCK(...)         NER_CHAINABLE_BLOCK(NERSize, __VA_ARGS__)
#define NER_RECT_BLOCK(...)         NER_CHAINABLE_BLOCK(NERRect, __VA_ARGS__)
#define NER_INSETS_BLOCK(...)       NER_CHAINABLE_BLOCK(UIEdgeInsets, __VA_ARGS__)
#define NER_FLOAT_LIST_BLOCK(...)   NER_CHAINABLE_BLOCK(NERFloatList, __VA_ARGS__)

#define  FESumBlock     ^(NSInteger value){ NSLog(@"宏定义Block%ld",value); }

#define  FESumBlock2     ^(NSInteger a,NSInteger b){ NSLog(@"宏定义Block%ld---%ld",a,b); }

#define FESumBlock3      ^(NSInteger a,NSInteger b){ NSLog(@"宏定义Block%ld---%ld",a,b);return a + b;}

#define safeRun(...) {__VA_ARGS__}


typedef void (^FESumBlock4)(NSInteger a,NSInteger b);

@interface ViewController ()<UITextFieldDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   // NerdyUIExample
    void (^sumBlock)(int ,int ) = ^(int a,int b){
        NSLog(@"%d + %d = %d",a,b,a+b);
    };

    
    FESumBlock(10);
    FESumBlock2(10,100);
    
    NSInteger sumResult = FESumBlock3(1000,100);
    NSLog(@"结果:%ld",sumResult);
 //   NSLog(@"Block中的最后的值--%ld",test);
    safeRun(NSLog(@"我是测试"););
    
    NSLog(@"宏定义之后的结果---%d",TKFLOAT(10));
    CaculatorManager *manager = [[CaculatorManager alloc] init];
    
    
    
    manager.add(10).multi(100);
    
    NSLog(@"测试结果----%ld",manager.result);
    
    FEHeaderView *view = [[FEHeaderView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    
    view.bgColor([UIColor grayColor]).borderWidth(3.0).borderColor([UIColor redColor]);
    
    [self.view addSubview:view];
    
    UIButton *button = Button.position(CGRectMake(100, 400, 100, 30)).bgColor([UIColor grayColor]).title(@"Button");
  //  [self.view addSubview:button];
    
    HLog(@"ddddddd%@",@"----------");
    HLog(@"%@", view.backgroundColor = [UIColor redColor]);
    
    NSString *str = @"A~B^C";
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet: [NSCharacterSet characterSetWithCharactersInString:@"^~"]];
    NSLog(@"%@", arr);
    

    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY0123456789"] invertedSet];
    
    NSString *test = @"1我们A都是S中2国人";
    test = [test substringToIndex:2];
    
    NSArray *testArr = [test componentsSeparatedByCharactersInSet:cs];
    NSLog(@"%@", testArr);

    NSMutableArray *mutablearr = [[NSMutableArray alloc] initWithCapacity:100];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {

    if (textField.text.length > 10) {
        return NO;
    }
    return YES;
}

@end
