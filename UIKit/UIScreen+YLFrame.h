//
//  UIScreen+YLFrame.h
//  YLCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 15/5/22.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (YLFrame)
+ (CGSize)yl_size;
+ (CGFloat)yl_width;
+ (CGFloat)yl_height;

+ (CGSize)yl_orientationSize;
+ (CGFloat)yl_orientationWidth;
+ (CGFloat)yl_orientationHeight;
+ (CGSize)yl_DPISize;

@end
