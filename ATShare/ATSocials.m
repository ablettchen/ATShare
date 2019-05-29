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
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"分享给\n微信好友";
    self.icon = atshare_imageNamed(@"atshare_social_wechat@2x.png");
    self.enable = [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_WechatSession];
    return self;
}

- (ATSocialType)type {
    return kATSocialTypeWechat;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialWechatTimeline
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"分享到\n微信朋友圈";
    self.icon = atshare_imageNamed(@"atshare_social_wechattimeline@2x.png");
    self.enable = [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_WechatTimeLine];
    return self;
}

- (ATSocialType)type {
    return kATSocialTypeWechatTimeline;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialQQ
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"分享到\n手机QQ";
    self.icon = atshare_imageNamed(@"atshare_social_qq@2x.png");
    self.enable = [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_QQ];
    return self;
}

- (ATSocialType)type {
    return kATSocialTypeQQ;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialQZone
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"分享到\nQQ空间";
    self.icon = atshare_imageNamed(@"atshare_social_qzone@2x.png");
    self.enable = [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_Qzone];
    return self;
}

- (ATSocialType)type {
    return kATSocialTypeQZone;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end

@implementation ATSocialSina
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize appKey;
@synthesize appSecret;
@synthesize redirectURL;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"分享到\n新浪微博";
    self.icon = atshare_imageNamed(@"atshare_social_sina@2x.png");
    self.enable = [[UMSocialManager defaultManager] isInstall:UMSocialPlatformType_Sina];
    return self;
}

- (ATSocialType)type {
    return kATSocialTypeSina;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end
