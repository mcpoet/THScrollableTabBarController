//
//  AppDelegate.m
//  THScrollableTabBarControllerSample
//
//  Created by Kien Tran on 5/15/12.
//  Copyright (c) 2012 Cogini. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "THScrollableTabBarController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    ViewController1 *vc1 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
    ViewController2 *vc2 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    ViewController1 *vc3 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
    ViewController2 *vc4 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    ViewController1 *vc5 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
    ViewController2 *vc6 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    ViewController1 *vc7 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
    ViewController2 *vc8 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    ViewController1 *vc9 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
    ViewController2 *vc10 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    ViewController2 *vc11 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    //    vc4.navigationController.navigationBarHidden = NO;
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    NSArray *vcs = [[NSArray alloc] initWithObjects:vc1, vc2, vc3, vc5, nav4, vc6, vc7, vc8, vc9, vc10, vc11, nil];    
    
    UITabBarItem *favorites = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
	UITabBarItem *topRated = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:1];
	UITabBarItem *featured = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];
	UITabBarItem *recents = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:3];
	UITabBarItem *contacts = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:4];
	UITabBarItem *history = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:5];
	UITabBarItem *bookmarks = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:6];
	UITabBarItem *search = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:7];
	UITabBarItem *downloads = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:8]; downloads.badgeValue = @"2";
	UITabBarItem *mostRecent = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:9];
	UITabBarItem *mostViewed = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:10];
	
	NSArray *systemItems = [NSArray arrayWithObjects:favorites,
                            topRated,
                            featured,
                            recents,
                            contacts,
                            history,
                            bookmarks,
                            search,
                            downloads,
                            mostRecent,
                            mostViewed, nil];
    
    
    
    
    
    
    
    THScrollableTabBarController *tb = [[THScrollableTabBarController alloc] initWithViewControllers:vcs withUITabBarSystemItem:systemItems];
    self.window.rootViewController = tb;
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
