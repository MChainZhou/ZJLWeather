//
//  FadeBlackView.m
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "FadeBlackView.h"

@implementation FadeBlackView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:CGRectMake(0, 0, Width, Height)]) {
        self.backgroundColor = [UIColor blackColor];
        self.alpha = 0;
    }
    return self;
}

- (void)show{
    [UIView animateWithDuration:1.f animations:^{
        self.alpha = 0.75f;
    }];

}
- (void)hide{
    [UIView animateWithDuration:1.f animations:^{
        self.alpha = 0.f;
    }];
}
@end
