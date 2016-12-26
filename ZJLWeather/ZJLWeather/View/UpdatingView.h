//
//  UpdatingView.h
//  ZJLWeather
//
//  Created by apple on 2016/12/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpdatingView : UIView
- (void)insterIntoView:(UIView *)view;

- (void)show;
- (void)hide;
- (void)showFailed;
@end
