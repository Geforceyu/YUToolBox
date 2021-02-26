//
//  YUImageTitleButton.m
//  YUToolBox
//
//  Created by Geforceyu on 2021/2/26.
//

#import "YUImageTitleButton.h"
#import "UIColor+YUColor.h"
#import <Masonry/Masonry.h>

@interface YUImageTitleButton ()

@end

@implementation YUImageTitleButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] init];
        _imageView.layer.cornerRadius = 30.0f;
        [self addSubview:_imageView];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(self);
        }];
        
        _titleLabel = [[UILabel alloc] init];
        [self addSubview:_titleLabel];
                
    }
    return self;
}
- (void)setSpacing:(CGFloat)spacing {
    _spacing = spacing;
    [_titleLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(_imageView.mas_bottom).offset(_spacing);
    }];
}
- (void)setNormalImage:(NSString *)normalImage {
    _normalImage = normalImage;
    _imageView.image = [UIImage imageNamed:normalImage];
}
- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    _imageView.image = [UIImage imageNamed:selected?_selectedImage:_normalImage];
    if (_selectedTitle) {
        _titleLabel.text = selected ? _selectedTitle : _title;
    }
}
- (void)setTitle:(NSString *)title {
    _title = title;
    _titleLabel.text = title;
}

@end
