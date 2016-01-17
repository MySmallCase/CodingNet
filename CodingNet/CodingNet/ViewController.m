//
//  ViewController.m
//  CodingNet
//
//  Created by MyMac on 16/1/16.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ViewController.h"

#import "UIDevice+Info.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"%@==",[UIDevice systemInfoDict][@"device"]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
