//
//  GetWeatherData.h
//  ZJLWeather
//
//  Created by apple on 16/12/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@protocol GetWeatherDataDelegate <NSObject>

- (void)weatherData:(id)object success:(BOOL)success;

@end

@interface GetWeatherData : NSObject
///
@property(nonatomic, weak) id<GetWeatherDataDelegate>delegate;

/// 地址信息
@property(nonatomic, strong) CLLocation *location;
/// 城市的ID号码
@property(nonatomic, strong) NSString *cityID;


- (void)startGetLocationWeatherData;
@end
