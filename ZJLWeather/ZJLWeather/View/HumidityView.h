//
//  HumidityView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HumidityView : UIView
/// 百分比
@property (nonatomic,assign) CGFloat percent;


- (void)show;
- (void)hide;
@end
