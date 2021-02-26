//
//  UIImage+YUTool.m
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import "UIImage+YUTool.h"

@implementation UIImage (YUTool)

+ (instancetype)yu_imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (instancetype)yu_resizeImage {
    
    CGFloat centerX = self.size.width / 2.0;
    CGFloat centerY = self.size.height / 2.0;
    return [self resizableImageWithCapInsets:UIEdgeInsetsMake(centerY, centerX, centerY, centerX) resizingMode:UIImageResizingModeStretch];
}
@end
