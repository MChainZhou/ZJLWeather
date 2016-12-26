//
//  SnowView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "EmitterLayerView.h"

@interface SnowView : EmitterLayerView
///
@property(nonatomic, strong) UIImage *snowImage;
///生命周期
@property (nonatomic,assign) CGFloat lifeTime;
///出生率
@property (nonatomic,assign) CGFloat birthRate;
///雪花速率
@property (nonatomic,assign) CGFloat speed;
///速率变化范围
@property (nonatomic,assign) CGFloat speedRange;
///重力
@property (nonatomic,assign) CGFloat gravity;
///雪花颜色
@property(nonatomic, strong) UIColor *snowColor;
- (void)show;
- (void)showSnow;
- (void)hide;
- (void)configType:(EMitterType)type;
@end
