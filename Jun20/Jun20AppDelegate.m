//
//  Jun20AppDelegate.m
//  Jun20
//
//  Created by Udo Hoppenworth on 6/20/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "Jun20AppDelegate.h"
#import "View.h"

@implementation Jun20AppDelegate {
    View *_view;
    UIWindow *_window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"application: didFinishLaunchingWithOptions: called");
    
//    application.statusBarHidden = YES;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    // self.window.backgroundColor = [UIColor whiteColor];

//    self.view = [[View alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    
    
    self.view = [[View alloc]
                      initWithFrame: [[UIScreen mainScreen] applicationFrame]
                      string: @"HelloWorld!"
                      backgroundColor: [UIColor colorWithRed: 1.0 green: 0.6 blue: 0.1 alpha: 0.85]
                      point: CGPointZero
                      font:  [UIFont systemFontOfSize: 32.0]
                      ];
    
    CGFloat w = self.view.bounds.size.width;
    CGFloat h = self.view.bounds.size.height;
    self.view.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    
    [self.window addSubview:self.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive: called");
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applicationDidEnterBackground called");
    
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground called");
    [self.view setNeedsDisplay];
    
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"applicationDidBecomeActive: called");
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"applicationWillTerminate: called");
    
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(id)init {
    
    self = [super init];
    if (self) {
        NSLog(@"AppDelegate initialized");
    }
    return self;
}

@end
