//
//  WeatherView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WeatherViewDelegate <NSObject>



@end

@interface WeatherView : UIView
///
@property(nonatomic, weak) id<WeatherViewDelegate>delegate;
@end
