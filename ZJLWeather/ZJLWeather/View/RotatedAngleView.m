//
//  RotatedAngleView.m
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "RotatedAngleView.h"

// 将度数转换为弧度
#define   RADIAN(degrees)  ((M_PI * (degrees))/ 180.f)

// 将弧度转换为度数
#define   DEGREES(radian)  ((radian) * 180.f / M_PI)

@interface RotatedAngleView ()
/// 默认旋转值
@property (nonatomic,assign) CGAffineTransform defaultTransform;
@end

@implementation RotatedAngleView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.defaultTransform = self.transform;
    }
    return self;
}

- (void)roateAngle:(CGFloat)angle duration:(CGFloat)duration{
    [UIView animateWithDuration:duration animations:^{
        self.transform = CGAffineTransformRotate(self.defaultTransform, RADIAN(angle));
    }];
}

/// 旋转角度
- (void)roateAngle:(CGFloat)angle{
    self.transform = CGAffineTransformRotate(_defaultTransform, RADIAN(angle));
}
/// 恢复动画的效果
- (void)recoverDuration:(CGFloat)duration{
    [UIView animateWithDuration:duration animations:^{
        self.transform = CGAffineTransformRotate(self.defaultTransform, 0);
    }];
}

@end
