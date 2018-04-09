//
//  UIColor+HFExtension.m
//  HiMagzine
//
//  Created by fairzy on 13-9-10.
//  Copyright (c) 2013年 hifashion. All rights reserved.
//

#import "UIColor+YLHFExtension.h"

@implementation UIColor (YLHFExtension)

+(UIColor*)colorWithHexString:(NSString*)hex{
    return [UIColor colorWithHexString:hex alpha:1.0f];
}

+(UIColor*)colorWithHexString:(NSString*)hex alpha:(CGFloat)alpha{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ( cString.length < 6 ) {
        return [UIColor whiteColor];
    }
    if ( [cString hasPrefix:@"0x"] ) {
        cString = [cString substringFromIndex:2];
    }
    if ( [cString hasPrefix:@"#"] ) {
        cString = [cString substringFromIndex:1];
    }
    if ( cString.length != 6 ) {
        return [UIColor whiteColor];
    }
    
    NSRange range = NSMakeRange(0, 2);
    NSString * rString = [cString substringWithRange:range];
    range.location = 2;
    NSString * gString = [cString substringWithRange:range];
    range.location = 4;
    NSString * bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}
+ (UIColor *)colorwithHexNumber:(NSInteger)rgbValue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0
                           green:((float)((rgbValue & 0xFF00) >> 8))/255.0
                            blue:((float)(rgbValue & 0xFF))/255.0 alpha:alpha];
}

+ (UIColor *)colorwithHexNumber:(NSInteger)rgbValue{
    return [UIColor colorwithHexNumber:rgbValue alpha:1.0f];
}

+ (UIColor *)quickfishBlueColor{
    return [UIColor colorwithHexNumber:0x00aff4];
}

@end
