//
//  CALayer+MaskLayer.m
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CALayer+MaskLayer.h"

@implementation CALayer (MaskLayer)
+ (CALayer *)createMaskLayerWithSize:(CGSize)size maskPNGImage:(UIImage *)image{
    CALayer *layer = [CALayer layer];
    layer.anchorPoint = CGPointZero;
    layer.bounds = CGRectMake(0, 0, size.width, size.height);
    
    if (image) {
        layer.contents = (__bridge id)image.CGImage;
    }
    return layer;
}
@end
