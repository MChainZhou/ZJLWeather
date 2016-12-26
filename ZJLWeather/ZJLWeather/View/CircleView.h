//
//  CircleView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView
/// 线条宽度
@property (nonatomic,assign) CGFloat lineWidth;

/// 线条颜色
@property(nonatomic, strong) UIColor *lineColor;

/// 旋转方向
@property (nonatomic,assign) BOOL clockWise;

/// 开始角度
@property (nonatomic,assign) CGFloat startAngle;


- (void)buildView;
/// 做strock动画
/// @param value 取值 [0,1]
/// @param animation 是否执行动画
/// @param duration 执行动画的时间
- (void)strokeEnd:(CGFloat)value animation:(BOOL)animation duration:(CGFloat)duration;
- (void)strokeStart:(CGFloat)value animation:(BOOL)animation duration:(CGFloat)duration;


/// 创建出默认配置的view
/// @param frame 设置用的frame值
/// @return 实例对象

+ (instancetype)createDefaultViewWithFrame:(CGRect)frame;
@end
