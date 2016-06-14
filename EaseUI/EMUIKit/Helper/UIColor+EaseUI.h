//
//  UIColor+EaseUI.h
//  Pods
//
//  Created by Jerry Wu on 6/14/16.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (EaseUI)

+ (UIColor *)EUPrimaryColor;
+ (UIColor *)EUGreenDarkColor;
+ (UIColor *)EUGreenLightColor;
+ (UIColor *)EURedColor;
+ (UIColor *)EUGrayLightColor;

+ (UIColor *)colorFromHexString:(NSString *)hexString;

@end
