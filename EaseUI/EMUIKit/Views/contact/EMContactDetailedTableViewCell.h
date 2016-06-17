//
//  EMContactDetailedTableViewCell.h
//  Pods
//
//  Created by Jerry Wu on 6/15/16.
//
//

#import <UIKit/UIKit.h>

#import "EaseUserCell.h"
#import "IUserModel.h"
#import "IConversationModel.h"
#import "IModelCell.h"
#import "EaseImageView.h"

@protocol EaseUserCellDelegate;

@interface EMContactDetailedTableViewCell : UITableViewCell<IModelCell>

@property (weak, nonatomic) id<EaseUserCellDelegate> delegate;

@property (strong, nonatomic) id<IUserModel> userModel;
@property (strong, nonatomic) id<IConversationModel> conversationModel;

@property (nonatomic) BOOL showAvatar; //default is "YES"

@property (strong, nonatomic) IBOutlet EaseImageView *avatarView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;

@property (strong, nonatomic) NSIndexPath *indexPath;

//@property (nonatomic) UIFont *titleLabelFont UI_APPEARANCE_SELECTOR;
//@property (nonatomic) UIColor *titleLabelColor UI_APPEARANCE_SELECTOR;

+ (NSString *)cellIdentifier;

@end


@protocol EaseUserCellDelegate <NSObject>

- (void)cellLongPressAtIndexPath:(NSIndexPath *)indexPath;

@end
