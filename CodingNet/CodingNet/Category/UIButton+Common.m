//
//  UIButton+Common.m
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "UIButton+Common.h"
#import <POP+MCAnimate.h>
#import <math.h>


@interface UIButton ()

@property (nonatomic,strong) UIActivityIndicatorView *activityIndicator;

@end
@implementation UIButton (Common)

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)color {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor clearColor];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateHighlighted];
    [button.titleLabel setFont:[UIFont systemFontOfSize:16]];
    [button.titleLabel setMinimumScaleFactor:0.5];
    
    CGFloat titleWidth = [title getWidthWithFont:button.titleLabel.font constrainedToSize:CGSizeMake(kScreen_Width, 30)] +20;
    button.frame = CGRectMake(0, 0, titleWidth, 30);
    
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

+ (UIButton *)buttonWithTitle_ForNav:(NSString *)title{
    return [UIButton buttonWithTitle:title titleColor:[UIColor colorWithHexString:@"0x3bbd79"]];
}

- (void)frameToFitTitle{
    CGRect frame = self.frame;
    CGFloat titleWidth = [self.titleLabel.text getWidthWithFont:self.titleLabel.font constrainedToSize:CGSizeMake(kScreen_Width, frame.size.height)];
    frame.size.width = titleWidth;
    [self setFrame:frame];
}



@end
