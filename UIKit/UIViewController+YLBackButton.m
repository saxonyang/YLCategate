//
//  UIViewController+BackButton.m
//  Jia360
//
//  Created by Mao Zhijun on 14-6-12.
//  Copyright (c) 2014年 jia360. All rights reserved.
//

#import "UIViewController+YLBackButton.h"
#import "NSString+YLSize.h"
#import "UIScreen+YLFrame.h"

@implementation UIViewController (YLBackButton)


- (UIBarButtonItem *)addLeftBarButtonItemWithTitle:(NSString *)title selector:(SEL)selector{
    if ( !self.navigationController ) {
        return nil;
    }
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithTitle:title
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self action:selector];
    [leftItem setTintColor:[UIColor blackColor]];
    self.navigationItem.leftBarButtonItem = leftItem;
    return leftItem;
}



- (UIButton *)addBackBarButtonItemWithImageName:(NSString *)imageName{
    return [self addLeftBarButtonItemWithImageName:imageName selector:@selector(navbarBackButtonAction:)];
}

- (UIButton *)addLeftBarButtonItemWithImageName:(NSString *)imageName selector:(SEL)selector{
    return [self addLeftBarButtonItemWithImageName:imageName title:nil selector:selector];
}

- (UIButton *)addLeftBarButtonItemWithImageName:(NSString *)imageName title:(NSString *)title selector:(SEL)selector{
    UIImage * image = [UIImage imageNamed:imageName];
    CGSize imageSize = image.size;
    if ( imageSize.width < 40 ) {
        imageSize.width = 40;
    }
    if ( imageSize.height < 40 ) {
        imageSize.height = 40;
    }
    UIButton * cancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    cancelButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [cancelButton setTitle:title forState:UIControlStateNormal];
    [cancelButton.titleLabel setFont:[UIFont systemFontOfSize:15.0f]];
    //    cancelButton.layer.borderColor = [UIColor redColor].CGColor;
    //    cancelButton.layer.borderWidth = 1.0f;
    [cancelButton setImage:image forState:UIControlStateNormal];
    [cancelButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
//    [cancelButton sizeToFit];
    UIBarButtonItem * cancelItem = [[UIBarButtonItem alloc] initWithCustomView:cancelButton];
    if ( self.navigationController ) {
        self.navigationItem.leftBarButtonItem = cancelItem;
    }
    return cancelButton;
}

- (void)navbarBackButtonAction:(UIButton *)button{
    [self.navigationController popViewControllerAnimated:NO];
}

- (UIButton *)addRightBarButtonItemWithImageName:(NSString *)imageName selector:(SEL)selector{
    if ( !self.navigationController ) {
        return nil;
    }
    UIImage * image = [UIImage imageNamed:imageName];
    CGSize imageSize = image.size;
    if ( imageSize.width < 40 ) {
        imageSize.width = 40;
    }
    if ( imageSize.height < 40 ) {
        imageSize.height = 40;
    }
    UIButton * cancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    cancelButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [cancelButton setImage:image forState:UIControlStateNormal];
    [cancelButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
//    cancelButton.layer.borderColor = [UIColor redColor].CGColor;
//    cancelButton.layer.borderWidth = 1.0f;
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc] initWithCustomView:cancelButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    return cancelButton;
}

- (UIBarButtonItem *)addRightBarButtonItemWithTitle:(NSString *)title selector:(SEL)selector{
    if ( !self.navigationController ) {
        return nil;
    }
    UIButton * cancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, [title yl_widthWithFont:[UIFont systemFontOfSize:15] constrainedToHeight:40], 40)];
    cancelButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    cancelButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [cancelButton setTitle:title forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cancelButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc] initWithCustomView:cancelButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    
//    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc] initWithTitle:title
//                                                                   style:UIBarButtonItemStylePlain
//                                                                  target:self action:selector];
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                                   target:nil action:nil];
    negativeSpacer.width = 5;

    self.navigationItem.rightBarButtonItem = rightItem;

//    self.navigationItem.rightBarButtonItems = @[negativeSpacer, rightItem];
//    self.navigationItem.rightBarButtonItem.tintColor = [UIColor blackColor];

    return rightItem;
}

- (UIView *)addRightBarButtonItemWithCustomView:(UIView *)view{
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc] initWithCustomView:view];
//    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
//    target:nil action:nil];
//    negativeSpacer.width = 5;
    self.navigationItem.rightBarButtonItem = rightItem;
    return view;
}

- (UIView *)addLeftBarButtonItemWithCustomView:(UIView *)view{
    return [self addLeftBarButtonItemWithCustomView:view selector:nil];
}

- (UIView *)addLeftBarButtonItemWithCustomView:(UIView *)view selector:(SEL)selector{
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    leftItem.target = self;
    leftItem.action = selector;
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    space.width = -1;
    self.navigationItem.leftBarButtonItems = @[space, leftItem];
    return view;
}

//- (UIBarButtonItem *)leftSpacer{
//    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//    
//    space.width = -5.0f;
//    return space ;
//}
//
- (UIBarButtonItem *)rightSpacer{
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    space.width = 5.0f;
    return space ;
}

- (void)setNavBarBackgroundColor:(UIColor *)color titleColor:(UIColor *)titlecolor leftImage:(NSString *)name {
    self.navigationController.navigationBar.barTintColor = color;
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:titlecolor}];
    [self addLeftBarButtonItemWithImageName:name selector:@selector(navbarBackButtonAction:)];
}
@end
