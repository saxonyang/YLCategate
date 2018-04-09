//
//  UITextView+PlaceHolder.h
//  YLCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 14/12/15.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UITextView (YLPlaceHolder) <UITextViewDelegate>
@property (nonatomic, strong) UITextView *yl_placeHolderTextView;
- (void)yl_addPlaceHolder:(NSString *)placeHolder;
@end
