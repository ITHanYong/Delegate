//
//  TouchView.m
//  Delegate代理
//
//  Created by HanYong on 2018/5/10.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height/2 - 15, frame.size.width, 30)];
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.titleLabel];
    }
    return self;
}

//当视图接受触摸事件之后，由代理执行来响应触摸事件
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if ([_delegate respondsToSelector:@selector(handleTouchBegin:)]) {
        [_delegate handleTouchBegin:self];
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if ([_delegate respondsToSelector:@selector(handleTouchMove:)]) {
        [_delegate handleTouchMove:self];
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if ([_delegate respondsToSelector:@selector(handleTouchEnd:)]) {
        [_delegate handleTouchEnd:self];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
