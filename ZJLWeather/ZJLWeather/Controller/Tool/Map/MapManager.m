//
//  MapManager.m
//  ZJLWeather
//
//  Created by apple on 16/12/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MapManager.h"

@interface MapManager ()<CLLocationManagerDelegate>
///<# #>
@property(nonatomic, strong) CLLocationManager *locationManager;
@end

@implementation MapManager
- (void)start{
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;
    
    if ([_locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [_locationManager requestWhenInUseAuthorization];
    }
    
    [_locationManager startUpdatingLocation];

}

#pragma mark --- CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    [manager stopUpdatingLocation];
    
    if ([self.delegate respondsToSelector:@selector(mapManager:didUpdateAndGetlastCLLocation:)]) {
        [self.delegate mapManager:self didUpdateAndGetlastCLLocation:locations.firstObject];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    if ([CLLocationManager locationServicesEnabled] == NO) {
        if ([self.delegate respondsToSelector:@selector(mapManagerServerClosed:)]) {
            [self.delegate mapManagerServerClosed:self];
        }
    }else{
        if ([self.delegate respondsToSelector:@selector(mapManager:didFailed:)]) {
            [self.delegate mapManager:self didFailed:error];
        }
    }
}

@synthesize authorizationStatus = _authorizationStatus;
- (CLAuthorizationStatus)authorizationStatus{
    return [CLLocationManager authorizationStatus];
}

@end
