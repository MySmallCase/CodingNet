//
//  UIToolBar.m
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//


#define kEaseToolBar_Height 49.0
#define kEaseToolBar_SplitLineViewTag 100


#import "UIToolBar.h"

@interface UIToolBar ()

@property (strong, nonatomic) NSArray *buttonItems;

@end

@implementation UIToolBar

+ (instancetype)toolBarWithItems:(NSArray *)buttonItems{
    return [[UIToolBar alloc] initWithItems:buttonItems];
}

- (instancetype)itemOfIndex:(NSInteger)index{
    if (index >= 0 && self.buttonItems && self.buttonItems.count >= index) {
        return self.buttonItems[index];
    }else{
        return nil;
    }
}

- (instancetype)initWithItems:(NSArray *)buttonItems{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, kScreen_Width, kEaseToolBar_Height);
        self.backgroundColor = [UIColor colorWithHexString:@"0xf8f8f8"];
        self.buttonItems = buttonItems;
    }
    return self;
}

- (void)setButtonItems:(NSArray *)buttonItems{
    if (buttonItems != _buttonItems) {
        for (UIView *view in self.subviews) {
            [view removeFromSuperview];
        }
        _buttonItems = buttonItems;
    }
    
    //TODO: 这里要添加UIView的扩展
//    [self addLineUp:YES andDown:NO andColor:[UIColor lightGrayColor]];
    if (_buttonItems.count > 0) {
        NSInteger num = _buttonItems.count;
        CGFloat itemWidth = CGRectGetWidth(self.frame)/num;
        CGFloat itemHeight = CGRectGetHeight(self.frame);
        
        for (int i = 0; i < num; i++) {
            UIControl *item = _buttonItems[i];
            item.frame = CGRectMake(i*itemWidth, 0, itemWidth, itemHeight);
            [item addTarget:self action:@selector(itemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:item];
            if (i < num-1) {//item之间的分隔线
                UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake((i+1)*itemWidth, (itemHeight - 25.0)/2, 0.5, 25)];
                lineView.tag = kEaseToolBar_SplitLineViewTag;
                lineView.backgroundColor = [UIColor colorWithHexString:@"0xd1d1d1"];
                [self addSubview:lineView];
            }
        }
    }
}

- (void)itemButtonClicked:(UIButton *)sender{
    NSInteger index = [self.buttonItems indexOfObject:sender];
    if (index != NSNotFound && [self.delegate respondsToSelector:@selector(easeToolBar:didClickedIndex:)]) {
        [self.delegate easeToolBar:self didClickedIndex:index];
    }
}

@end



@interface UIToolBarItem ()

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *disableImageName;


@end

@implementation UIToolBarItem

+ (instancetype)easeToolBarItemWithTitle:(NSString *)title image:(NSString *)imageName disableImage:(NSString *)disableImageName{
    return [[UIToolBarItem alloc] initWithTitle:title image:imageName disableImage:disableImageName];
}
- (instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName disableImage:(NSString *)disableImageName{
    self = [super init];
    if (self) {
        self.title = title;
        self.imageName = imageName;
        self.disableImageName = disableImageName;
        
        [self setIconImage:[UIImage imageNamed:_imageName]];
        [self setButtonText:_title];
        
        [self setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:15],
                              NSForegroundColorAttributeName:[UIColor colorWithHexString:@"0x888888"]} forUIControlState:UIControlStateNormal];
        [self setIconPosition:IconPositionLeft];
        [self setTextAlignment:NSTextAlignmentCenter];
        [self setControlState:UIControlStateNormal];
        self.enabled = YES;
    }
    return self;
}
- (void)setEnabled:(BOOL)enabled{
    [super setEnabled:enabled];
    NSString *imageName = enabled? _imageName:(_disableImageName? _disableImageName: _imageName);
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:15],
                                 NSForegroundColorAttributeName:enabled? [UIColor colorWithHexString:@"0x888888"] : [UIColor colorWithHexString:@"0xc2c2c2"]};
    [self setIconImage:[UIImage imageNamed:imageName]];
    [self setAttributes:attributes forUIControlState:UIControlStateNormal];
}
- (void)addTipIcon{
    CGRect iconFrame = [self getIconImageView].frame;
    
    //TODO: 添加UIView扩展
    
//    [self addBadgeTip:kBadgeTipStr withCenterPosition:CGPointMake(iconFrame.origin.x + iconFrame.size.width +2, 12)];
}
- (void)removeTipIcon{
    
    //TODO: 添加UIView扩展
//    [self removeBadgeTips];
}

@end


