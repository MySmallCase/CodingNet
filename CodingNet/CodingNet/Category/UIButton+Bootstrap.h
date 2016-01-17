//
//  UIButton+Bootstrap.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NSString+FontAwesome.h>


typedef NS_ENUM(NSInteger,StrapButtonStyle) {
    StrapBootstrapStyle = 0,
    StrapDefaultStyle,
    StrapPrimaryStyle,
    StrapSuccessStyle,
    StrapInfoStyle,
    StrapWarningStyle,
    StrapDangerStyle
};

@interface UIButton (Bootstrap)

- (void)addAwesomeIcon:(FAIcon)icon beforeTitle:(BOOL)before;
- (void)bootstrapStyle;
- (void)defaultStyle;
- (void)primaryStyle;
- (void)successStyle;
- (void)infoStyle;
- (void)warningStyle;
- (void)dangerStyle;
- (UIImage *) buttonImageFromColor:(UIColor *)color ;
+ (UIButton *)buttonWithStyle:(StrapButtonStyle)style andTitle:(NSString *)title andFrame:(CGRect)rect target:(id)target action:(SEL)selector;

@end
