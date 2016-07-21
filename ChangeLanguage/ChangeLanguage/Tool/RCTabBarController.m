//
//  RCTabBarController.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/21.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "RCTabBarController.h"
#import "RCNavigationController.h"
#import "RCTabBar.h"

#import "NearByViewController.h"
#import "FriendsViewController.h"
#import "NewsViewController.h"
#import "MyViewController.h"

@interface RCTabBarController ()

@end

@implementation RCTabBarController
+ (void)initialize{
   /**
    * 设置 TabBarItem的字体大小与颜色，可参考UIButton
    */
    
    NSMutableDictionary * tabDic=[NSMutableDictionary dictionary];
    tabDic[NSFontAttributeName] = [UIFont systemFontOfSize:11];
    tabDic[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary * selectedTabDic=[NSMutableDictionary dictionary];
    selectedTabDic[NSFontAttributeName] = [UIFont systemFontOfSize:11];
    selectedTabDic[NSForegroundColorAttributeName] = [UIColor colorWithHexString:@"#9f70c0"];
    
    UITabBarItem * item=[UITabBarItem appearance];
    [item setTitleTextAttributes:tabDic forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:selectedTabDic forState:(UIControlStateSelected)];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setChildViewController:[[NearByViewController alloc]init] Title:Localized (@"附近") Image:@"附近" SelectedImage:@"附近S"];
    [self setChildViewController:[[FriendsViewController alloc]init] Title:Localized (@"好友") Image:@"好友" SelectedImage:@"好友S"];
    [self setChildViewController:[[NewsViewController alloc]init] Title:Localized (@"消息") Image:@"消息" SelectedImage:@"消息S"];
    [self setChildViewController:[[MyViewController alloc]init] Title:Localized (@"我的") Image:@"我的" SelectedImage:@"我的S"];
    [self setValue:[[RCTabBar alloc] init] forKey:@"tabBar"];
    
  
    
   
    
}
- (void)selectController:(NSInteger)index{
    self.selectedIndex=index;
}

/**
 *  初始化控制器
 */
- (void)setChildViewController:(UIViewController*)childVC Title:(NSString*)title Image:(NSString *)image SelectedImage:(NSString *)selectedImage
{
    /**
     *  添加 tabBarItem 上的文字和图片
     */
    childVC.tabBarItem.title=title;
    childVC.tabBarItem.image=[UIImage imageNamed:image];
    childVC.tabBarItem.selectedImage=[[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    RCNavigationController *nav = [[RCNavigationController alloc]initWithRootViewController:childVC];
    [self addChildViewController:nav];
    [nav didMoveToParentViewController:self];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
