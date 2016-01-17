//
//  NSString+Emojize.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Emojize)

- (NSString *)emojizedString;
+ (NSString *)emojizedStringWithString:(NSString *)text;

- (NSString *)aliasedString;
+ (NSString *)aliasedStringWithString:(NSString *)text;


+ (NSDictionary *)emojiForAliases;
+ (NSDictionary *)aliaseForEmojis;

- (NSString *)toAliase;
- (NSString *)toEmoji;



@end
