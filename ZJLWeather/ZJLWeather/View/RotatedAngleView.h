//
//  RotatedAngleView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotatedAngleView : UIView
/// 旋转角度与持续时间
/// @param angle 旋转角度
/// @param duration 持续时间

- (void)roateAngle:(CGFloat)angle duration:(CGFloat)duration;
/// 旋转角度
- (void)roateAngle:(CGFloat)angle;
/// 恢复动画的效果
- (void)recoverDuration:(CGFloat)duration;
@end
