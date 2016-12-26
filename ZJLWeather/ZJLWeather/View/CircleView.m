//
//  CircleView.m
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CircleView.h"

// 将度数转换为弧度
#define   RADIAN(degrees)  ((M_PI * (degrees))/ 180.f)

// 将弧度转换为度数
#define   DEGREES(radian)  ((radian) * 180.f / M_PI)

@interface CircleView ()
/// 圆形的layer
@property(nonatomic, strong) CAShapeLayer *circleLayer;
@end

@implementation CircleView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self createCircleView];
        
    }
    return self;
}

- (void)buildView{
    //初始化信息
    CGFloat lineWidth = self.lineWidth <=0 ? 1.0 : self.lineWidth;
    UIColor *lineColor = self.lineColor == nil ? [UIColor blackColor] : self.lineColor;
    
    CGSize size = self.bounds.size;
    
    //设置半径
    CGFloat radius = size.width/2.f - lineWidth/2.f;
    
    //旋转方向
    BOOL clockWise = self.clockWise;
    CGFloat startAngle = 0;
    CGFloat endAngle = 0;
    
    if (clockWise == YES) {
        startAngle = -RADIAN(180 - self.startAngle);
        endAngle = RADIAN(180 + self.startAngle);
    }else{
        startAngle = RADIAN(180 - self.startAngle);
        endAngle   = -RADIAN(180 + self.startAngle);
    }
    
    //创建出贝塞尔曲线
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width/2.f, size.height/2.f) radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockWise];
    
    //取出path
    self.circleLayer.path = circlePath.CGPath;
    
    //设置颜色
    self.circleLayer.strokeColor = lineColor.CGColor;
    self.circleLayer.fillColor = [UIColor clearColor].CGColor;
    self.circleLayer.lineWidth = lineWidth;
    self.circleLayer.strokeEnd = 0.f;

}
- (void)createCircleView{
    self.circleLayer = [CAShapeLayer layer];
    self.circleLayer.frame = self.bounds;
    [self.layer addSublayer:self.circleLayer];
}

- (void)strokeEnd:(CGFloat)value animation:(BOOL)animation duration:(CGFloat)duration{
    //过滤掉不合理的值
    if (value <= 0) {
        value = 0.f;
    }
    if (value >= 1) {
        value = 1.f;
    }
    
    if (animation) {
        CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animation];
        keyAnimation.keyPath = @"strokeEnd";
        keyAnimation.duration = duration;
        keyAnimation.values = [YXEasing calculateFrameFromValue:self.circleLayer.strokeEnd
                                                        toValue:value
                                                           func:CubicEaseInOut
                                                     frameCount:duration * 30];
        //执行动画
        self.circleLayer.strokeEnd = value;
        [self.circleLayer addAnimation:keyAnimation forKey:nil];
    }else{
        
        //关闭动画
        [CATransaction setDisableActions:YES];
        self.circleLayer.strokeEnd = value;
        [CATransaction setDisableActions:NO];
    }

}

- (void)strokeStart:(CGFloat)value animation:(BOOL)animation duration:(CGFloat)duration{
    //过滤掉不合理的值
    if (value <= 0) {
        value = 0.f;
    }
    if (value >= 1) {
        value = 1.f;
    }
    
    if (animation) {
        CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animation];
        keyAnimation.keyPath = @"strokeStart";
        keyAnimation.duration = duration;
        keyAnimation.values = [YXEasing calculateFrameFromValue:self.circleLayer.strokeStart
                                                        toValue:value
                                                           func:CubicEaseInOut
                                                     frameCount:duration * 30];
        //执行动画
        self.circleLayer.strokeStart = value;
        [self.circleLayer addAnimation:keyAnimation forKey:nil];
    }else{
        
        //关闭动画
        [CATransaction setDisableActions:YES];
        self.circleLayer.strokeStart = value;
        [CATransaction setDisableActions:NO];
    }


}

+ (instancetype)createDefaultViewWithFrame:(CGRect)frame{
    CircleView *circleView = [[CircleView alloc]initWithFrame:frame];
    circleView.lineWidth = 2.f;
    circleView.lineColor = [UIColor blackColor];
    circleView.startAngle = 180;
    circleView.clockWise = YES;
    
    return circleView;
}
@end
