//
//  UIView+YUFrame.m
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import "UIView+YUFrame.h"

@implementation UIView (YUFrame)

- (CGFloat)yu_top
{
    return self.frame.origin.y;
}

- (void)setYu_top:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)yu_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setYu_right:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}

- (CGFloat)yu_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setYu_bottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}

- (CGFloat)yu_left
{
    return self.frame.origin.x;
}

- (void)setYu_left:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)yu_width
{
    return self.frame.size.width;
}

- (void)setYu_width:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)yu_height
{
    return self.frame.size.height;
}

- (void)setYu_height:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

#pragma mark - Shortcuts for frame properties

- (CGPoint)yu_origin {
    return self.frame.origin;
}

- (void)setYu_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)yu_size {
    return self.frame.size;
}

- (void)setYu_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
#pragma mark - Shortcuts for positions

- (CGFloat)yu_centerX {
    return self.center.x;
}

- (void)setYu_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)yu_centerY {
    return self.center.y;
}

- (void)setYu_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}
@end
