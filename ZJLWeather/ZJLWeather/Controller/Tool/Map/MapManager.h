//
//  MapManager.h
//  ZJLWeather
//
//  Created by apple on 16/12/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;
@class MapManager;

@protocol MapManagerDelegate <NSObject>
@optional
- (void)mapManager:(MapManager *)mapManager didUpdateAndGetlastCLLocation:(CLLocation *)loction;
- (void)mapManager:(MapManager *)mapManager didFailed:(NSError *)error;
- (void)mapManagerServerClosed:(MapManager *)mapManager;

@end

@interface MapManager : NSObject
///
@property(nonatomic, weak) id<MapManagerDelegate>delegate;
///
@property (nonatomic,assign,readonly) CLAuthorizationStatus authorizationStatus;
- (void)start;
@end
