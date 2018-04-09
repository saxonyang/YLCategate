//
//  UIViewController+BackButton.h
//  Jia360
//
//  Created by Mao Zhijun on 14-6-12.
//  Copyright (c) 2014年 jia360. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (YLBackButton)

- (UIBarButtonItem *)addLeftBarButtonItemWithTitle:(NSString *)title selector:(SEL)selector;
- (UIButton *)addBackBarButtonItemWithImageName:(NSString *)imageName;
- (UIButton *)addLeftBarButtonItemWithImageName:(NSString *)imageName selector:(SEL)selector;
- (UIButton *)addLeftBarButtonItemWithImageName:(NSString *)imageName title:(NSString *)title selector:(SEL)selector;
- (UIView *)addLeftBarButtonItemWithCustomView:(UIView *)view;
- (UIView *)addLeftBarButtonItemWithCustomView:(UIView *)view selector:(SEL)selector;

- (UIButton *)addRightBarButtonItemWithImageName:(NSString *)imageName selector:(SEL)selector;
- (UIBarButtonItem *)addRightBarButtonItemWithTitle:(NSString *)title selector:(SEL)selector;
- (UIView *)addRightBarButtonItemWithCustomView:(UIView *)view;

- (UIBarButtonItem *)rightSpacer;
- (void)setNavBarBackgroundColor:(UIColor *)color titleColor:(UIColor *)titlecolor leftImage:(NSString *)name;
@end
