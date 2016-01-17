//
//  UIButton+Common.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Common)

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)color;
+ (UIButton *)buttonWithTitle_ForNav:(NSString *)title;

- (void)frameToFitTitle;


//TODO: 三个方法实现有问题
//- (void)animateToImage:(NSString *)imageName;
//
////开始请求时，UIActivityIndicatorView 提示
//- (void)startQueryAnimate;
//- (void)stopQueryAnimate;

@end
