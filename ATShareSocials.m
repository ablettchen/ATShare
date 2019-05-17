//
//  ATShareSocials.m
//  ATShare
//
//  Created by ablett on 2019/5/17.
//

#import "ATShareSocials.h"

@implementation ATShareSocialWechat

- (ATShareSocial)social {
    return kATShareSocialWechat;
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
    return at_shareSocialDescription(self.social);
}

@end

@implementation ATShareSocialWechatTimeline

- (ATShareSocial)social {
    return kATShareSocialWechatTimeline;
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
    return at_shareSocialDescription(self.social);
}

@end

@implementation ATShareSocialQQ

- (ATShareSocial)social {
    return kATShareSocialQQ;
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
    return at_shareSocialDescription(self.social);
}

@end

@implementation ATShareSocialQZone

- (ATShareSocial)social {
    return kATShareSocialQZone;
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
    return at_shareSocialDescription(self.social);
}

@end

@implementation ATShareSocialSina

- (ATShareSocial)social {
    return kATShareSocialSina;
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
    return at_shareSocialDescription(self.social);
}

@end
