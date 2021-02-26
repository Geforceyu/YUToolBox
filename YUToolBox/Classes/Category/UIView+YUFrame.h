//
//  UIView+YUFrame.h
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YUFrame)

@property (nonatomic, assign) CGPoint yu_origin;
@property (nonatomic, assign) CGSize yu_size;

@property (nonatomic) CGFloat yu_centerX;
@property (nonatomic) CGFloat yu_centerY;


@property (nonatomic) CGFloat yu_top;
@property (nonatomic) CGFloat yu_bottom;
@property (nonatomic) CGFloat yu_right;
@property (nonatomic) CGFloat yu_left;

@property (nonatomic) CGFloat yu_width;
@property (nonatomic) CGFloat yu_height;
@end

NS_ASSUME_NONNULL_END
