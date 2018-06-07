//
//  AMapView.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "AMapView.h"
#import "LocationRepresentationStyle.h"
#import "Marker.h"

@interface AMapView() <MAMapViewDelegate>
@end
@implementation AMapView
{
  //当前位置标记样式
  MAUserLocationRepresentation *_locationRepresentationStyle;
  //存储地图marker
  NSMutableDictionary *_markers;
}
- (instancetype)init
{
  _markers = [NSMutableDictionary new];
  self = [super init];
  return self;
}

- (void)didAddSubview:(UIView *)subview {
  //当map添加Marker子视图时
  if ([subview isKindOfClass:[Marker class]]) {
    Marker *marker = (Marker *) subview;
    //将标注的mapView指向自身
    marker.mapView = self;
    //将标注存储以annotation.hash为key
    _markers[[@(marker.annotation.hash) stringValue]] = marker;
    //添加标注
    NSLog(@"AMAP-T 添加标注 %lu",marker.annotation.hash);
    [self addAnnotation:marker.annotation];
  }

}

- (Marker *)getMarker:(id <MAAnnotation>)annotation {
  return _markers[[@(annotation.hash) stringValue]];
}

//props start
- (void)setTrafficVisible:(BOOL)isVisible {
  self.showTraffic = isVisible;
}
- (BOOL)trafficVisible{
  return self.showTraffic;
}
- (void)setIndoorMapVisible:(BOOL)isVisible {
  //NSLog(@"AMAP-T call setIndoorMapVisible");
  self.showsIndoorMap = isVisible;
}
- (void)setLocationEnabled:(BOOL)enabled {
  self.showsUserLocation = enabled;
  if(enabled){
    self.userTrackingMode = MAUserTrackingModeFollow;
  }
}
- (void)setLocationRepresentationStyle:(LocationRepresentationStyle *)style{
  //初始化小圆点样式
  if(!_locationRepresentationStyle){
    _locationRepresentationStyle = [MAUserLocationRepresentation new];
  }
  //精度圈是否显示 默认为NO
  _locationRepresentationStyle.showsAccuracyRing = style.showsAccuracyRing;
  //是否显示方向指示(MAUserTrackingModeFollowWithHeading模式开启)。默认为YES
  _locationRepresentationStyle.showsHeadingIndicator = style.showsHeadingIndicator;
  //精度圈 填充颜色, 默认 kAccuracyCircleDefaultColor
  _locationRepresentationStyle.fillColor =style.fillColor;
  //精度圈 边线颜色, 默认 kAccuracyCircleDefaultColor
  _locationRepresentationStyle.strokeColor = style.strokeColor;
  ///精度圈 边线宽度，默认0
  _locationRepresentationStyle.lineWidth = style.lineWidth;
  //内部蓝色圆点是否使用律动效果, 默认YES
  _locationRepresentationStyle.enablePulseAnnimation = style.enablePulseAnnimation;
  //定位点背景色，不设置默认白色
  _locationRepresentationStyle.locationDotBgColor = style.locationDotBgColor;
  //定位点蓝色圆点颜色，不设置默认蓝色
  _locationRepresentationStyle.locationDotFillColor = style.locationDotFillColor;
  //定位图标, 与蓝色原点互斥
  _locationRepresentationStyle.image = style.image;
  
  //设置小圆点样式
  [self updateUserLocationRepresentation:_locationRepresentationStyle];
  
}
//props end

@end
