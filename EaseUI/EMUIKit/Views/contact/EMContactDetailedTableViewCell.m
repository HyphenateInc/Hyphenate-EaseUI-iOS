//
//  EMContactDetailedTableViewCell.m
//  Pods
//
//  Created by Jerry Wu on 6/15/16.
//
//

#import "EMContactDetailedTableViewCell.h"

#import "EaseImageView.h"
#import "UIImageView+EMWebCache.h"


@implementation EMContactDetailedTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    if (self.avatarView.badge) {
        self.avatarView.badgeBackgroudColor = [UIColor redColor];
    }
}

//+ (void)initialize
//{
    // UIAppearance Proxy Defaults
//    EaseUserCell *cell = [self appearance];
//    cell.titleLabelColor = [UIColor blackColor];
//    cell.titleLabelFont = [UIFont systemFontOfSize:18];
//}

//- (instancetype)initWithStyle:(UITableViewCellStyle)style
//              reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        [self setupSubview];
//        
//        UILongPressGestureRecognizer *headerLongPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(headerLongPress:)];
//        [self addGestureRecognizer:headerLongPress];
//    }
//    
//    return self;
//}

#pragma mark - private layout subviews

- (void)setupSubview
{
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.numberOfLines = 2;
    self.titleLabel.backgroundColor = [UIColor clearColor];
//    self.titleLabel.font = _titleLabelFont;
//    self.titleLabel.textColor = _titleLabelColor;
    [self.contentView addSubview:self.titleLabel];
}

- (void)setModel:(id<IUserModel>)model
{
    _model = model;
    
    if ([_model.nickname length] > 0) {
        self.titleLabel.text = _model.nickname;
    }
    else{
        self.titleLabel.text = _model.buddy;
    }
    
    if ([_model.avatarURLPath length] > 0){
        [self.avatarView.imageView sd_setImageWithURL:[NSURL URLWithString:_model.avatarURLPath] placeholderImage:_model.avatarImage];
    } else {
        if (_model.avatarImage) {
            self.avatarView.image = _model.avatarImage;
        }
    }
}

//- (void)setTitleLabelFont:(UIFont *)titleLabelFont
//{
//    _titleLabelFont = titleLabelFont;
//    _titleLabel.font = _titleLabelFont;
//}
//
//- (void)setTitleLabelColor:(UIColor *)titleLabelColor
//{
//    _titleLabelColor = titleLabelColor;
//    _titleLabel.textColor = _titleLabelColor;
//}

#pragma mark - class method

+ (CGFloat)cellHeightWithModel:(id)model
{
    return EaseUserCellMinHeight;
}

#pragma mark - action

- (void)headerLongPress:(UILongPressGestureRecognizer *)longPress
{
    if (longPress.state == UIGestureRecognizerStateBegan) {
        if(_delegate && _indexPath && [_delegate respondsToSelector:@selector(cellLongPressAtIndexPath:)])
        {
            [_delegate cellLongPressAtIndexPath:self.indexPath];
        }
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    if (self.avatarView.badge) {
        self.avatarView.badgeBackgroudColor = [UIColor redColor];
    }
}


+ (NSString *)cellIdentifier
{
    return @"EMContactDetailedTableViewCell";
}

@end
