//
//  AMapView.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/5/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "AMapView.h"
#import "LocationRepresentationStyle.h"

@implementation AMapView
{
  MAUserLocationRepresentation *_locationRepresentationStyle;
}

- (void)setLocationEnabled:(BOOL)enabled {
  NSLog(enabled?@"启用用户位置":@"禁用用户位置");
  self.showsUserLocation = enabled;
  if(enabled){
    self.userTrackingMode = MAUserTrackingModeFollow;
  }
}
- (void)setLocationRepresentationStyle:(LocationRepresentationStyle *)style{
  NSLog(@"小圆点样式 %@",style);
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
@end
