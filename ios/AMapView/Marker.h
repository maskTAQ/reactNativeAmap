//
//  Marker.h
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/6/6.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "AMapView.h"

@interface Marker : UIView
- (MAPointAnnotation *)annotation;
- (MAAnnotationView *)annotationView;
- (void)setMapView:(AMapView *) mapView;
@end
