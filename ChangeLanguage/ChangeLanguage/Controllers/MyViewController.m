//
//  MyViewController.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/21.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "MyViewController.h"

#import "RCTabBarController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=Localized(@"我的");
    
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake((WIDTH-200)/2, 150, 200, 50);
    btn.backgroundColor=[UIColor groupTableViewBackgroundColor];
    [btn setTitle:Localized(@"切换语言") forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(changeClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}
- (void)changeClick{
    //修改本地获取的语言文件-交替
    NSString *language = [[NSUserDefaults standardUserDefaults]objectForKey:@"appLanguage"];
    if ([language isEqualToString: @"en"]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
    }else {
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self languageChangeFinish];
}

-(void)languageChangeFinish{
    
    UIWindow * window =[UIApplication sharedApplication].keyWindow;
    RCTabBarController * rct=[[RCTabBarController alloc]init];
    [rct selectController:3] ;
    window.rootViewController=rct;
    
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
