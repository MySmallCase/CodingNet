//
//  UILongPressMenuImageView.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILongPressMenuImageView : UIImageView

@property (copy, nonatomic) void(^longPressMenuBlock)(NSInteger index, NSString *title);

@property (strong, nonatomic) NSArray *longPressTitles;

- (void)addLongPressMenu:(NSArray *)titles clickBlock:(void(^)(NSInteger index, NSString *title))block;

@end
