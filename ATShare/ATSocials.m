//
//  ATSocials.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATSocials.h"
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
    return [NSString stringWithFormat:@"atshare_icon_%@.png", self.description];
}

- (BOOL)enable {
    return YES;
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
    return [NSString stringWithFormat:@"atshare_icon_%@.png", self.description];
}

- (BOOL)enable {
    return YES;
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
    return [NSString stringWithFormat:@"atshare_icon_%@.png", self.description];
}

- (BOOL)enable {
    return YES;
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
    return [NSString stringWithFormat:@"atshare_icon_%@.png", self.description];
}

- (BOOL)enable {
    return YES;
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
    return [NSString stringWithFormat:@"atshare_icon_%@.png", self.description];
}

- (BOOL)enable {
    return YES;
}

- (NSString *)description {
    return at_socialDescription(self.type);
}

@end
