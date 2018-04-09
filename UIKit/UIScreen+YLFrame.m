//
//  UIScreen+YLFrame.m
//  YLCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 15/5/22.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "UIScreen+YLFrame.h"

@implementation UIScreen (YLFrame)
+ (CGSize)yl_size
{
    return [[UIScreen mainScreen] bounds].size;
}

+ (CGFloat)yl_width
{
    return [[UIScreen mainScreen] bounds].size.width;
}

+ (CGFloat)yl_height
{
    return [[UIScreen mainScreen] bounds].size.height;
}

+ (CGSize)yl_orientationSize
{
    CGFloat systemVersion = [[[UIDevice currentDevice] systemVersion]
                             doubleValue];
    BOOL isLand =   UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation);
    return (systemVersion>8.0 && isLand) ? yl_SizeSWAP([UIScreen yl_size]) : [UIScreen yl_size];
}

+ (CGFloat)yl_orientationWidth
{
    return [UIScreen yl_orientationSize].width;
}

+ (CGFloat)yl_orientationHeight
{
    return [UIScreen yl_orientationSize].height;
}

+ (CGSize)yl_DPISize
{
    CGSize size = [[UIScreen mainScreen] bounds].size;
    CGFloat scale = [[UIScreen mainScreen] scale];
    return CGSizeMake(size.width * scale, size.height * scale);
}


/**
 *  交换高度与宽度
 */
static inline CGSize yl_SizeSWAP(CGSize size) {
    return CGSizeMake(size.height, size.width);
}
@end
