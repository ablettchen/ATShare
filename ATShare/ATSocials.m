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
    return self.description;
}

- (NSString *)icon {
    return [NSString stringWithFormat:@"atshare_social_%@.png", self.description];
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
    return self.description;
}

- (NSString *)icon {
    return [NSString stringWithFormat:@"atshare_social_%@.png", self.description];
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
    return self.description;
}

- (NSString *)icon {
    return [NSString stringWithFormat:@"atshare_social_%@.png", self.description];
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
    return self.description;
}

- (NSString *)icon {
    return [NSString stringWithFormat:@"atshare_social_%@.png", self.description];
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
    return self.description;
}

- (NSString *)icon {
    return [NSString stringWithFormat:@"atshare_social_%@.png", self.description];
}

- (BOOL)enable {
    return [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_Sina];
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end
