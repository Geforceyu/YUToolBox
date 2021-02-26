//
//  UIImage+YUTool.h
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (YUTool)

/// 根据颜色生成图片
/// @param color 颜色
+ (instancetype)yu_imageWithColor:(UIColor *)color;

/// 从图片正中间进行拉伸
- (instancetype)yu_resizeImage;

@end

NS_ASSUME_NONNULL_END
