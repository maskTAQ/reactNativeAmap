//
//  AMapView.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <React/RCTUIManager.h>
#import "Marker.h"
#import "AMapView.h"

#pragma ide diagnostic ignored "OCUnusedClassInspection"
#pragma ide diagnostic ignored "-Woverriding-method-mismatch"

@interface AMapViewManager : RCTViewManager <MAMapViewDelegate>
@end

@implementation AMapViewManager
RCT_EXPORT_MODULE()

- (UIView *)view
{
  AMapView *mapView = [AMapView new];
  mapView.centerCoordinate = CLLocationCoordinate2DMake(39.989631, 116.481018);
  mapView.zoomLevel = 15;
  mapView.zoomEnabled = YES;
  mapView.delegate = self;
  return mapView;
}

RCT_EXPORT_VIEW_PROPERTY(trafficVisible, BOOL)
RCT_EXPORT_VIEW_PROPERTY(indoorMapVisible, BOOL)
RCT_EXPORT_VIEW_PROPERTY(locationEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(locationRepresentationStyle, LocationRepresentationStyle)

- (MAAnnotationView *)mapView:(AMapView *)mapView viewForAnnotation:(id <MAAnnotation>)annotation {
  if ([annotation isKindOfClass:[MAPointAnnotation class]]) {
    Marker *marker = [mapView getMarker:annotation];
    return marker.annotationView;
  }
  
  return nil;
}
- (void)mapView:(AMapView *)mapView didSelectAnnotationView:(MAAnnotationView *)view {
  NSLog(@"AMAP-T 选中marker");
}
- (void)mapInitComplete:(MAMapView *)mapView{
  NSLog(@"AMAP-T 地图渲染完毕");
}
@end

