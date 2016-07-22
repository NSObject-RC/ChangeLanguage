//
//  RCView.m
//  ChangeLanguage
//
//  Created by RongCheng on 16/7/22.
//  Copyright © 2016年 RongCheng. All rights reserved.
//

#import "RCView.h"

@implementation RCView
+(instancetype)guideView{
    
  return [[[NSBundle mainBundle]loadNibNamed:@"RCView" owner:self options:nil] lastObject];
}
- (IBAction)btn:(id)sender {
    [self removeFromSuperview];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
