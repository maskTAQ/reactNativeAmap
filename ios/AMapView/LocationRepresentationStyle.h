//
//  locationRepresentationStyle.h
//  reactNativeAmap
//
//  Created by 邰爱强 on 2018/6/6.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <MAMapKit/MAMapKit.h>

@interface LocationRepresentationStyle : NSObject
@property(nonatomic) Boolean showsAccuracyRing;
@property(nonatomic) Boolean showsHeadingIndicator;
@property(nonatomic) UIColor *fillColor;
@property(nonatomic) UIColor *strokeColor;
@property(nonatomic) CGFloat lineWidth;
@property(nonatomic) Boolean enablePulseAnnimation;
@property(nonatomic) UIColor *locationDotBgColor;
@property(nonatomic) UIColor *locationDotFillColor;
@property(nonatomic) UIImage *image;
@end
