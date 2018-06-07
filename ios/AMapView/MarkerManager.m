//
//  MarkerManager.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/6/6.
//  Copyright © 2018年 Facebook. All rights reserved.
//
#import <MAMapKit/MAMapView.h>
#import <React/RCTUIManager.h>
#import "Marker.h"

@interface MarkerManager : RCTViewManager
@end

@implementation MarkerManager{
  
}
RCT_EXPORT_MODULE()
- (UIView *)view {
  Marker *marker = [Marker new];
  marker.hidden = YES;
  return marker;
}

RCT_EXPORT_VIEW_PROPERTY(title,NSString);
RCT_EXPORT_VIEW_PROPERTY(subTitle,NSString);
@end
