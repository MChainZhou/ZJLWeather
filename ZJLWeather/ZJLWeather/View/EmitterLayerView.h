//
//  EmitterLayerView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,EMitterType) {
    __SNOW = 0x11,
    __RAIN,
    __NONE,
};

@interface EmitterLayerView : UIView
/**
 * 重写setter，getter方法，可以在程序中直接使用点语法
 */
- (void)setEmitterLayer:(CAEmitterLayer *)layer;
- (CAEmitterLayer *)emitterLayer;


- (void)show;
- (void)hide;
- (void)configType:(EMitterType)type;
@end
