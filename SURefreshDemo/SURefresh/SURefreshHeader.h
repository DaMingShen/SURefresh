//
//  SURefreshHeader.h
//  CircleProgressView
//
//  Created by 万众科技 on 16/7/5.
//  Copyright © 2016年 万众科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+SURefresh.h"

@interface SURefreshHeader : UIView

UIKIT_EXTERN const CGFloat SURefreshHeaderHeight;
UIKIT_EXTERN const CGFloat SURefreshPointRadius;

@property (nonatomic, copy) void(^handle)();

#pragma mark - 停止动画
- (void)endRefreshing;

@end
