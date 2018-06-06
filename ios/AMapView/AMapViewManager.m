//
//  AMapView.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <React/RCTUIManager.h>
#import "AMapView.h"

@interface AMapViewManager : RCTViewManager
@end

@implementation AMapViewManager
RCT_EXPORT_MODULE()

- (UIView *)view
{
  AMapView *mapView = [AMapView new];
  mapView.centerCoordinate = CLLocationCoordinate2DMake(39.9242, 116.3979);
  mapView.zoomLevel = 15;
  mapView.zoomEnabled = YES;
  return mapView;
}

RCT_EXPORT_VIEW_PROPERTY(locationEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(locationRepresentationStyle, LocationRepresentationStyle)
@end

