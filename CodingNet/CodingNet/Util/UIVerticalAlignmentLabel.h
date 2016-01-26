//
//  UIVerticalAlignmentLabel.h
//  CodingNet
//
//  Created by MyMac on 16/1/19.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,VerticalAlignment) {
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
};


@interface UIVerticalAlignmentLabel : UILabel

@property (nonatomic,assign) VerticalAlignment verticalAlignment;

@end
