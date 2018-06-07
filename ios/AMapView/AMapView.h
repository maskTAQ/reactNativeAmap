//
//  AMapView.h
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//


#import <MAMapKit/MAMapKit.h>
#import "AMapView.h"

#import <AMapFoundationKit/AMapFoundationKit.h>
@class Marker;
@interface AMapView : MAMapView <MAMapViewDelegate>
- (Marker *)getMarker:(id <MAAnnotation>)annotation;
@end
