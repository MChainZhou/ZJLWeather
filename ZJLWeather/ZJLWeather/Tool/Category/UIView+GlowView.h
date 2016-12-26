//
//  UIView+GlowView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GlowView)
/// 定时器的时间间隔
@property(nonatomic, strong) NSNumber *GCDTimerInterval;
/// layer动画的时间长度
@property(nonatomic, strong) NSNumber *glowDuration;
/// 设置glowLayer的动画透明度的程度，给float值，范围在[0,1]
@property(nonatomic, strong) NSNumber *glowLayerOpacity;

- (void)createGlowLayerWithColor:(UIColor *)color glowRadius:(CGFloat)radius;
/// 重复执行动画
- (void)startGlow;
///直执行一次动画
- (void)glowToGlowLayerOnce;
/// 不执行动画
- (void)glowToNoramlLayerOnce;
@end
