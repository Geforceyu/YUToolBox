//
//  UIColor+YUColor.h
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (YUColor)

+ (instancetype)yu_colorWithHex:(UInt32)hex;

+ (instancetype)yu_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

+ (instancetype)yu_colorWithHexString:(NSString *)hexString;

@end

NS_ASSUME_NONNULL_END
