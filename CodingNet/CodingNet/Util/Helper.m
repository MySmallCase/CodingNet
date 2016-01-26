//
//  Helper.m
//  CodingNet
//
//  Created by MyMac on 16/1/19.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "Helper.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <UIAlertView+BlocksKit.h>

@import AVFoundation;


@implementation Helper

//检查系统"照片"授权状态, 如果权限被关闭, 提示用户去隐私设置中打开.
+ (BOOL)checkPhotoLibraryAuthorizationStatus {
    if ([ALAssetsLibrary respondsToSelector:@selector(authorizationStatus)]) {
        ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
        if (ALAuthorizationStatusDenied == authStatus ||
            ALAuthorizationStatusRestricted == authStatus) {
            [self showSettingAlertStr:@"请在iPhone的“设置->隐私->照片”中打开本应用的访问权限"];
            return NO;
        }
    }
    return YES;
}

+ (BOOL)checkCameraAuthorizationStatus {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        kTipAlert(@"该设备部支持照相");
    }
    
    if ([AVCaptureDevice instancesRespondToSelector:@selector(authorizationStatusForMediaType:)]) {
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        if (AVAuthorizationStatusDenied == authStatus || AVAuthorizationStatusRestricted ==  authStatus) {
            [self showSettingAlertStr:@"请在iPhone的“设置->隐私->相机”中打开本应用的访问权限"];
            return NO;
        }
    }
    return YES;
}


+ (void)showSettingAlertStr:(NSString *)tipStr {
    //iOS8+系统下可跳转到‘设置’页面，否则只弹出提示窗即可
    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_7_1) {
        UIAlertView *alertView = [UIAlertView bk_alertViewWithTitle:@"提示" message:tipStr];
        [alertView bk_setCancelButtonWithTitle:@"取消" handler:nil];
        [alertView bk_addButtonWithTitle:@"设置" handler:nil];
        [alertView bk_setDidDismissBlock:^(UIAlertView *alert, NSInteger index) {
            if (index == 1) {
                UIApplication *app = [UIApplication sharedApplication];
                NSURL *settingURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
                if ([app canOpenURL:settingURL]) {
                    [app openURL:settingURL];
                }
            }
        }];
        [alertView show];
    }else {
        kTipAlert(@"%@",tipStr);
    }
}

@end
