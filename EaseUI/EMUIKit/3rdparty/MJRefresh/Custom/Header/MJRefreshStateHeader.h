//
//  MJRefreshStateHeader.h
//  MJRefreshExample
//
//  Created by MJ Lee on 15/4/24.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "MJRefreshHeader.h"

@interface MJRefreshStateHeader : MJRefreshHeader

@property (copy, nonatomic) NSString *(^lastUpdatedTimeText)(NSDate *lastUpdatedTime);
@property (weak, nonatomic, readonly) UILabel *lastUpdatedTimeLabel;
@property (weak, nonatomic, readonly) UILabel *stateLabel;

- (void)setTitle:(NSString *)title forState:(MJRefreshState)state;

@end
