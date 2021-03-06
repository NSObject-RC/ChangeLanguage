//
//  AppDelegate.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/21.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "AppDelegate.h"
#import "RCTabBarController.h"
#import "RCView.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    
    // 存本地
    if (![[NSUserDefaults standardUserDefaults]objectForKey:@"appLanguage"]) {
       
        
        /**
        * 获取用户的语言偏好设置列表，该列表对应于IOS中Setting>General>Language弹出的面板中的语言列表。
        */
        NSArray *languages = [NSLocale preferredLanguages];
       
        
        /**
         *  第0个元素即为当前用户设置的语言 
         */
        NSString *language = [languages objectAtIndex:0];
       
        
        if ([language hasPrefix:@"zh-Hans"]) {
            [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
        }else{
            [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
        }
    }

    self.window.rootViewController = [[RCTabBarController alloc] init];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
/*
 *  是否显示引导页
 */
//- (void)showGuiView{
//    //获得当前版本号
//    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
//    NSLog(@"---当前版本号---%@",currentVersion);
//    //沙盒版本号
//    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] stringForKey:@"CFBundleShortVersionString"];
//    
//    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"CFBundleShortVersionString"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
//    
//    
//    NSLog(@"---沙盒版本号---%@",currentVersion);
//    if(![currentVersion isEqualToString:lastVersion]){
//        RCView * rcv=[RCView  guideView];
//        rcv.frame=self.window.bounds;
//        [self.window addSubview:rcv];
//        
//        
//        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:@"CFBundleShortVersionString"];
//        //马上写入沙盒
//        [[NSUserDefaults standardUserDefaults] synchronize];
//    }
//}
@end
