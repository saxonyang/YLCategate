//
//  UIView+DEFrameAdditions.m
//
//  Copyright (c) 2011-2013 Double Encore, Inc. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the distribution. Neither the name of the Double Encore Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from this software without specific prior written permission.
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
//  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS
//  BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "UIView+YLDEFrameAdditions.h"


@implementation UIView (YLDEFrameAdditions)


#pragma mark - Accessor methods

- (CGPoint)origin
{
    return self.frame.origin;
}


- (void)setOrigin:(CGPoint)deFrameOrigin
{
    CGRect frame = self.frame;
    frame.origin = deFrameOrigin;
    self.frame = frame;
}


- (CGFloat)bottom
{
    return self.top + self.height;
}

- (void)setBottom:(CGFloat)deFrameBottom{
    CGFloat gapH = deFrameBottom - self.bottom;
    self.top += gapH;
}

- (CGFloat)fbottom{
    return self.bottom;
}

- (void)setFbottom:(CGFloat)deFrameFixedTopBottom{
    CGFloat gapH = deFrameFixedTopBottom - self.bottom;
    self.height += gapH;
}

- (CGFloat)left
{
    return self.origin.x;
}


- (void)setLeft:(CGFloat)deFrameLeft
{
    self.origin = CGPointMake(deFrameLeft, self.top);
}


- (CGFloat)right
{
    return self.left + self.width;
}


- (void)setRight:(CGFloat)deFrameRight
{
    self.left = deFrameRight - self.width;
}


- (CGFloat)top
{
    return self.origin.y;
}


- (void)setTop:(CGFloat)deFrameTop
{
    self.origin = CGPointMake(self.left, deFrameTop);
}

- (void)setFtop:(CGFloat)deFrameFixedBottomTop{
    CGFloat gapH = self.top - deFrameFixedBottomTop;
    self.top = deFrameFixedBottomTop;
    self.height += gapH;
}

- (CGSize)size
{
    return self.frame.size;
}


- (void)setSize:(CGSize)deFrameSize
{
    CGRect frame = self.frame;
    frame.size = deFrameSize;
    self.frame = frame;
}


- (CGFloat)height
{
    return self.size.height;
}


- (void)setHeight:(CGFloat)deFrameHeight
{
    self.size = CGSizeMake(self.width, deFrameHeight);
}


- (CGFloat)width
{
    return self.size.width;
}


- (void)setWidth:(CGFloat)deFrameWidth
{
    self.size = CGSizeMake(deFrameWidth, self.height);
}


- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)deCenterX{
    CGPoint center = self.center;
    center.x = deCenterX;
    self.center = center;
}

- (CGFloat)centerY{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)deCenterY{
    CGPoint center = self.center;
    center.y = deCenterY;
    self.center = center;
}

@end
