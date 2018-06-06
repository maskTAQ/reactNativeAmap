//
//  RCTConvert+AMap.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/6/6.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <MAMapKit/MAMapView.h>
#import <React/RCTConvert.h>
#import "LocationRepresentationStyle.h"

@implementation RCTConvert (AMapView)
+ (LocationRepresentationStyle *)LocationRepresentationStyle:(id)json {
  LocationRepresentationStyle *locationRepresentationStyle = [LocationRepresentationStyle new];
  
  locationRepresentationStyle.showsAccuracyRing = [self BOOL:json[@"showsAccuracyRing"]];
  locationRepresentationStyle.showsHeadingIndicator = [self BOOL:json[@"showsHeadingIndicator"]];
  
  locationRepresentationStyle.fillColor = [self UIColor:json[@"fillColor"]];
  locationRepresentationStyle.strokeColor = [self UIColor:json[@"strokeColor"]];
  
  locationRepresentationStyle.lineWidth = [self CGFloat:json[@"lineWidth"]];
  locationRepresentationStyle.enablePulseAnnimation = [self BOOL:json[@"enablePulseAnnimation"]];
  
  locationRepresentationStyle.locationDotBgColor = [self UIColor:json[@"locationDotBgColor"]];
  locationRepresentationStyle.locationDotFillColor = [self UIColor:json[@"locationDotFillColor"]];
  
  locationRepresentationStyle.image = [UIImage imageNamed:[self NSString:json[@"image"]]];
  return locationRepresentationStyle;
}
@end
