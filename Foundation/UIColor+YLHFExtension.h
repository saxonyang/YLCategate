//
//  UIColor+HFExtension.h
//  HiMagzine
//
//  Created by fairzy on 13-9-10.
//  Copyright (c) 2013年 hifashion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YLHFExtension)

#define RGB(R, G, B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]

+(UIColor*)colorWithHexString:(NSString*)hex;
+(UIColor*)colorWithHexString:(NSString*)hex alpha:(CGFloat)alpha;
+(UIColor *)colorwithHexNumber:(NSInteger)rgbValue;
+ (UIColor *)colorwithHexNumber:(NSInteger)rgbValue alpha:(CGFloat)alpha;

+ (UIColor *)quickfishBlueColor;

@end
