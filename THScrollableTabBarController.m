//
//  THScrollableTabBarController.m
//  THScrollableTabBarControllerSample
//
//  Created by Kien Tran on 5/15/12.
//  Copyright (c) 2012 Cogini. All rights reserved.
//

#import "THScrollableTabBarController.h"

@interface THScrollableTabBarController ()
- (void)setupInfiniTabBar:(NSArray *)items;
@end

@implementation THScrollableTabBarController
@synthesize myViewControllers = _myViewControllers;
@synthesize scrollableTabBar = _scrollableTabBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithViewControllers:(NSArray *)newViewControllers withUITabBarSystemItem:(NSArray *) systemItems {
    self = [super init];
    if(self) {
        self.myViewControllers = newViewControllers;
        [self setupInfiniTabBar:systemItems];
        
        id vc1 = [self.myViewControllers objectAtIndex:0];
        self.viewControllers = [[NSArray alloc] initWithObjects:vc1, nil];
        [self setSelectedIndex:0];
        [self.scrollableTabBar selectItemWithTag:0];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollableTabBar.infiniTabBarDelegate = self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.scrollableTabBar.infiniTabBarDelegate = nil;
    self.scrollableTabBar = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)setupInfiniTabBar:(NSArray *)items {
    // Don't show scroll indicator
	self.scrollableTabBar = [[InfiniTabBar alloc] initWithItems:items];
    self.scrollableTabBar.showsHorizontalScrollIndicator = NO;
	self.scrollableTabBar.infiniTabBarDelegate = self;
	self.scrollableTabBar.bounces = NO;
    self.scrollableTabBar.frame = self.tabBar.frame;
    [self.view addSubview:self.scrollableTabBar];
}

#pragma InfiniTabBarDelegate

- (void)infiniTabBar:(InfiniTabBar *)tabBar didScrollToTabBarWithTag:(int)tag {
    
}

- (void)infiniTabBar:(InfiniTabBar *)tabBar didSelectItemWithTag:(int)tag {
    NSMutableArray *newViewControllers = [[NSMutableArray alloc] initWithCapacity:2];
    id newVc = [self.myViewControllers objectAtIndex:tag];
    
    if (self.selectedIndex == 0) {
        [newViewControllers addObject:[self.viewControllers objectAtIndex:0]];
        [newViewControllers addObject:newVc];
    } else {
        [newViewControllers addObject:newVc];
        [newViewControllers addObject:[self.viewControllers objectAtIndex:1]];
    }
    
    self.viewControllers = newViewControllers;
    [self setSelectedIndex: (1 - self.selectedIndex)];
}

@end
