//
//  UIScrollView+SURefresh.h
//  CircleProgressView
//
//  Created by 万众科技 on 16/7/5.
//  Copyright © 2016年 万众科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SURefreshHeader;
@interface UIScrollView (SURefresh)

@property (nonatomic, weak, readonly) SURefreshHeader * header;

- (void)addRefreshHeaderWithHandle:(void (^)())handle;

@end
