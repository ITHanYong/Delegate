//
//  TouchView.h
//  Delegate代理
//
//  Created by HanYong on 2018/5/10.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchView;

@protocol TouchDelegate<NSObject>

//处理触摸开始时的响应事件
-(void)handleTouchBegin:(TouchView *)view;

@optional
//触摸结束时的响应事件
-(void)handleTouchEnd:(TouchView *)view;

//触摸移动时的响应事件
-(void)handleTouchMove:(TouchView *)view;

@end

@interface TouchView : UIView

@property (nonatomic, assign) id<TouchDelegate>delegate;

@property (nonatomic, strong) UILabel *titleLabel;

@end
