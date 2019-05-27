//
//  ATSocials.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATSocials.h"
#import <UMCommon/UMCommon.h>
#import <UMShare/UMShare.h>

@implementation ATSocialWechat

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeWechat;
}

- (NSString *)name {
    return @"微信";
}

- (NSString *)icon {
    return @"atshare_social_wechat@2x.png";
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_WechatSession];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialWechatTimeline

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeWechatTimeline;
}

- (NSString *)name {
    return @"朋友圈";
}

- (NSString *)icon {
    return @"atshare_social_wechattimeline@2x.png";
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_WechatTimeLine];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialQQ

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeQQ;
}

- (NSString *)name {
    return @"QQ";
}

- (NSString *)icon {
    return @"atshare_social_qq@2x.png";
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_QQ];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialQZone

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeQZone;
}

- (NSString *)name {
    return @"QQ空间";
}

- (NSString *)icon {
    return @"atshare_social_qzone@2x.png";
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_Qzone];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialSina

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeSina;
}

- (NSString *)name {
    return @"微博";
}

- (NSString *)icon {
    return @"atshare_social_sina@2x.png";
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_Sina];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialCopy

@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (ATSocialType)type {
    return kATSocialTypeSina;
}

- (NSString *)name {
    return @"复制";
}

- (NSString *)icon {
    return @"atshare_social_urlcopy@2x.png";
}

- (BOOL)enable {
    return YES;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end
