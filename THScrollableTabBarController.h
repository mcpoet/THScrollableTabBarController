//
//  THScrollableTabBarController.h
//  THScrollableTabBarControllerSample
//
//  Created by Kien Tran on 5/15/12.
//  Copyright (c) 2012 Cogini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfiniTabBar.h"

@interface THScrollableTabBarController : UITabBarController <InfiniTabBarDelegate>

@property (nonatomic, retain) NSArray *myViewControllers;
@property (nonatomic, retain) InfiniTabBar *scrollableTabBar;
- (id)initWithViewControllers:(NSArray *)newViewControllers withUITabBarSystemItem:(NSArray *) systemItems;
@end
