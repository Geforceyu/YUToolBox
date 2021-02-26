//
//  YUImageTitleButton.h
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YUImageTitleButton : UIControl

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *selectedTitle;
@property (nonatomic, copy) NSString *normalImage;
@property (nonatomic, copy) NSString *selectedImage;

@property (nonatomic, assign) CGFloat spacing;

@property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UIImageView *imageView;

@end

NS_ASSUME_NONNULL_END
