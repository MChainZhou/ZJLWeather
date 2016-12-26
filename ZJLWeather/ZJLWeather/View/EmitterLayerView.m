//
//  EmitterLayerView.m
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "EmitterLayerView.h"

@interface EmitterLayerView (){
    
    CAEmitterLayer *_layer;
}

@end

@implementation EmitterLayerView
///替换当前view的Layer
+ (Class)layerClass{
    return [CAEmitterLayer class];
}

- (void)setEmitterLayer:(CAEmitterLayer *)layer{
    _layer = layer;
}

- (CAEmitterLayer *)emitterLayer{
    return _layer;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _layer = (CAEmitterLayer *)self.layer;
    }
    return self;
}

- (void)show{

}

- (void)hide{

}

- (void)configType:(EMitterType)type{

}

@end
