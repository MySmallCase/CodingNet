//
//  UIToolBar.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <PPiAwesomeButton/UIAwesomeButton.h>

@class UIToolBar;

@protocol UIToolBarDelegate <NSObject>
@optional
- (void)easeToolBar:(UIToolBar *)toolBar didClickedIndex:(NSInteger)index;
@end


@interface UIToolBar : UIView

@property (nonatomic, weak) id <UIToolBarDelegate> delegate;

+ (instancetype)toolBarWithItems:(NSArray *)buttonItems;

- (instancetype)itemOfIndex:(NSInteger)index;

- (instancetype)initWithItems:(NSArray *)buttonItems;

@end


@interface UIToolBarItem : UIAwesomeButton

+ (instancetype)easeToolBarItemWithTitle:(NSString *)title image:(NSString *)imageName disableImage:(NSString *)disableImageName;

- (instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName disableImage:(NSString *)disableImageName;
- (void)addTipIcon;

- (void)removeTipIcon;

@end