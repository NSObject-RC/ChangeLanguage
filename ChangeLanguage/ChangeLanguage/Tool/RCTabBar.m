
//
//  RCTabBar.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/21.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "RCTabBar.h"

@interface RCTabBar ()
@property (nonatomic, weak) UIButton *addButton;
@end


@implementation RCTabBar
- (instancetype)initWithFrame:(CGRect)frame{
    if(self=[super initWithFrame:frame]){
      
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        
        UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [addButton setBackgroundImage:[UIImage imageNamed:@"tabBarAdd"] forState:UIControlStateNormal];
        [addButton setBackgroundImage:[UIImage imageNamed:@"tabBarAddClick"] forState:UIControlStateHighlighted];
        [addButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        
        CGRect frame = addButton.frame;
        frame.size = addButton.currentBackgroundImage.size;
        addButton.frame = frame;
        
        [self addSubview:addButton];
        self.addButton = addButton;
        
        
    }
    return self;
}
// 中间按钮点击事件
- (void)publishClick{
    
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
   /**
    *  单独设置中间的按钮
    */
    self.addButton.center = CGPointMake(width * 0.5, height * 0.5);
    
   
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIControl *button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]] || button == self.addButton) continue;
        
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
