//
//  UIColor+YUColor.m
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import "UIColor+YUColor.h"

CGFloat yu_colorComponentFrom(NSString *string, NSUInteger start, NSUInteger length) {
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

@implementation UIColor (YUColor)

+ (instancetype)yu_colorWithHex:(UInt32)hex {
    return [self yu_colorWithHex:hex alpha:1];
}

+ (instancetype)yu_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((hex >> 16) & 0xFF)/255.0
                           green:((hex >> 8) & 0xFF)/255.0
                            blue:(hex & 0xFF)/255.0
                           alpha:alpha];
}

+ (instancetype)yu_colorWithHexString:(NSString *)hexString {
    CGFloat alpha, red, blue, green;
    
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = yu_colorComponentFrom(colorString, 0, 1);
            green = yu_colorComponentFrom(colorString, 1, 1);
            blue  = yu_colorComponentFrom(colorString, 2, 1);
            break;
            
        case 4: // #ARGB
            alpha = yu_colorComponentFrom(colorString, 0, 1);
            red   = yu_colorComponentFrom(colorString, 1, 1);
            green = yu_colorComponentFrom(colorString, 2, 1);
            blue  = yu_colorComponentFrom(colorString, 3, 1);
            break;
            
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = yu_colorComponentFrom(colorString, 0, 2);
            green = yu_colorComponentFrom(colorString, 2, 2);
            blue  = yu_colorComponentFrom(colorString, 4, 2);
            break;
            
        case 8: // #AARRGGBB
            alpha = yu_colorComponentFrom(colorString, 0, 2);
            red   = yu_colorComponentFrom(colorString, 2, 2);
            green = yu_colorComponentFrom(colorString, 4, 2);
            blue  = yu_colorComponentFrom(colorString, 6, 2);
            break;
            
        default:
            return nil;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
