//
//  Marker.m
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/6/6.
//  Copyright © 2018年 Facebook. All rights reserved.
//
#import <React/UIView+React.h>
#import <MAMapKit/MAMapKit.h>
#import "Marker.h"

@implementation Marker
{
  MAPointAnnotation *_annotation;
  MAAnnotationView *_annotationView;
  __weak AMapView *_mapView;
}
- (instancetype)init
{
  _annotation = [MAPointAnnotation new];
  _annotation.coordinate = CLLocationCoordinate2DMake(39.989631, 116.481018);
  _annotation.title = @"方恒国际中心A座";
  _annotation.subtitle = @"阜通东大街6号";
  self = [super init];
  return self;
}
- (MAAnnotationView *)annotationView{
  if (_annotationView == nil) {
    static NSString *pointReuseIndentifier = @"pointReuseIndentifier";
     _annotationView = [[MAPinAnnotationView alloc] initWithAnnotation:_annotation reuseIdentifier:pointReuseIndentifier];
    _annotationView.canShowCallout= YES;       //设置气泡可以弹出，默认为NO
    _annotationView.draggable = YES;        //设置标注可以拖动，默认为NO
  }
  return _annotationView;
}
- (MAPointAnnotation *)annotation {
  return _annotation;
}
- (void)setMapView:(AMapView *)mapView {
  _mapView = mapView;
}
-(void)setTitle:(NSString *)title{
  _annotation.title = title;
}
-(void)setSubTitle:(NSString *)subTitle{
  _annotation.subtitle =subTitle;;
}
@end
