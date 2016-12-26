//
//  CALayer+MaskLayer.h
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (MaskLayer)

/// 根据PNG图片创建出用于mask的layer
/// @param size  mask的尺寸
/// @param image 用于mask的图片
/// @return 创建好的mask的layer
+ (CALayer *)createMaskLayerWithSize:(CGSize)size maskPNGImage:(UIImage *)image;
@end
