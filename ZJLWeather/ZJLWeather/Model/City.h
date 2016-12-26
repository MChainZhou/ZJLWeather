//
//  City.h
//  ZJLWeather
//
//  Created by apple on 16/12/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coord.h"

@interface City : NSObject
/// 经纬度
@property(nonatomic, strong) Coord *coord;
/// 城市ID
@property(nonatomic, strong) NSString *cityId;
/// 国家
@property(nonatomic, strong) NSString *country;
/// 城市的名字
@property(nonatomic, strong) NSString *name;
///
@property(nonatomic, strong) NSString *population;
@end
