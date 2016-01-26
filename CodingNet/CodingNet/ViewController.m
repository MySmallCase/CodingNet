//
//  ViewController.m
//  CodingNet
//
//  Created by MyMac on 16/1/16.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ViewController.h"

//#import "UIDevice+Info.h"

#import "UIButton+Bootstrap.h"

#import "UIDevice+Info.h"

@interface ViewController ()

//@property (nonatomic,strong) UITextField *textField;



@end

@implementation ViewController


- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSDictionary *dict = [UIDevice systemInfoDict];
    NSLog(@"%@==",dict);
    

    
    
}






@end
