//
//  ViewController.m
//  Delegate代理
//
//  Created by HanYong on 2018/5/10.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()<TouchDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TouchView *touchView = [[TouchView alloc] initWithFrame:CGRectMake(10, 30, self.view.frame.size.width - 20, self.view.frame.size.width - 20)];
    touchView.backgroundColor = [UIColor grayColor];
    touchView.delegate = self;
    [self.view addSubview:touchView];
    
}

-(void)handleTouchBegin:(TouchView *)view{
    
    view.titleLabel.text = @"begin";
    NSLog(@"begin");
}

-(void)handleTouchMove:(TouchView *)view{
    
    view.titleLabel.text = @"move";
    NSLog(@"move");
}

-(void)handleTouchEnd:(TouchView *)view{
    
    view.titleLabel.text = @"end";
    NSLog(@"end");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
