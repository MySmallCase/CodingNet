//
//  NSString+AttributeStr.h
//  CodingNet
//
//  Created by MyMac on 16/1/19.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AttributeStr)

+(NSAttributedString*)getAttributeFromText:(NSString*)text emphasizeTag:(NSString*)tag emphasizeColor:(UIColor*)color;
+(NSAttributedString*)getAttributeFromText:(NSString*)text emphasize:(NSString*)emphasize emphasizeColor:(UIColor*)color;
+(NSString*)getStr:(NSString*)str removeEmphasize:(NSString*)emphasize;

@end
