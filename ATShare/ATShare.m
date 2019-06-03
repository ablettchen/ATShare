//
//  ATShare.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATShare.h"
#import <UMShare/UMShare.h>
#import <UMCommon/UMCommon.h>
#import <ATCategories/ATCategories.h>

@interface ATShare ()
@property (strong, nonatomic, readwrite) NSMutableArray <id<ATSocialProtocol>> *socials;
@end

@implementation ATShare

#pragma mark - lifecycle

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    _socials = [NSMutableArray array];
    _webURLActions = [NSMutableArray array];
    return self;
}

#pragma mark - privite

- (void)shareConfig:(nonnull id<ATSocialProtocol>)social {
    if (social.type == kATSocialTypeCustom) {return;}
    if (social.appKey.stringByTrim.length == 0 && \
        social.appSecret.stringByTrim.length == 0 && \
        social.redirectURL.stringByTrim.length == 0) {return;}
    UMSocialPlatformType type = [self.class umSocial:social];
    [[UMSocialManager defaultManager] setPlaform:type
                                          appKey:social.appKey
                                       appSecret:social.appSecret
                                     redirectURL:social.redirectURL];
}

+ (UMSocialPlatformType)umSocial:(nonnull id<ATSocialProtocol>)social {
    switch (social.type) {
        case kATSocialTypeWechat:
            return UMSocialPlatformType_WechatSession;
        case kATSocialTypeWechatTimeline:
            return UMSocialPlatformType_WechatTimeLine;
        case kATSocialTypeQQ:
            return UMSocialPlatformType_QQ;
        case kATSocialTypeQZone:
            return UMSocialPlatformType_Qzone;
        case kATSocialTypeSina:
            return UMSocialPlatformType_Sina;
        case kATSocialTypeCustom:
            return UMSocialPlatformType_UserDefine_Begin;
        default:
            return UMSocialPlatformType_UnKnown;
            break;
    }
}

#pragma mark - public

- (void)addSocial:(__kindof NSObject<ATSocialProtocol> *)social {
    if ([self.socials containsObject:social]) {return;}
    [self shareConfig:social];
    [self.socials addObject:social];
}

- (void)addWebURLAction:(nonnull id<ATWebURLActionProtocol>)webURLAction {
    if ([self.webURLActions containsObject:webURLAction]) {return;}
    [self.webURLActions addObject:webURLAction];
}

- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished {
    
    if (social.type != kATSocialTypeCustom && !social.enable) {
        NSString *msg = [NSString stringWithFormat:@"%@ is disabled", social.description];
        NSError *error = [NSError errorWithDomain:@"com.ablett.atshare" code:404 userInfo:@{NSLocalizedDescriptionKey:msg}];
        if (self.finished) {self.finished(error, social);}
        return;
    }
    
    self.finished = finished;
    [self shareConfig:social];
    switch (res.type) {
        case ATShareResTypeWeb:{
            [self shareWebTo:social res:res];
        }break;
        case ATShareResTypeImage:{
            [self shareImageTo:social res:res];
        }break;
        case ATShareResTypeAudio:{
            [self shareAudioTo:social res:res];
        }break;
        case ATShareResTypeVideo:{
            [self shareVideoTo:social res:res];
        }break;
        default:
            break;
    }
}

- (void)shareWebTo:(nonnull id<ATSocialProtocol>)social res:(nonnull id<ATShareResProtocol>)res {
    UMSocialPlatformType platformType = [self.class umSocial:social];
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:res.title
                                                                             descr:res.desc
                                                                         thumImage:res.thumb];
    shareObject.webpageUrl = res.urlString;
    messageObject.shareObject = shareObject;
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        if (self.finished) {
            self.finished(error, social);
        }
    }];
}

- (void)shareImageTo:(nonnull id<ATSocialProtocol>)social res:(nonnull id<ATShareResProtocol>)res {
    UMSocialPlatformType platformType = [self.class umSocial:social];
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    messageObject.text = res.title;
    UMShareImageObject *shareObject = [[UMShareImageObject alloc] init];
    shareObject.thumbImage = res.thumb;
    [shareObject setShareImage:(res.urlString.length > 0) ? res.urlString : res.thumb];
    messageObject.shareObject = shareObject;
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        if (self.finished) {
            self.finished(error, social);
        }
    }];
}

- (void)shareAudioTo:(nonnull id<ATSocialProtocol>)social res:(nonnull id<ATShareResProtocol>)res {
    UMSocialPlatformType platformType = [self.class umSocial:social];
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    UMShareMusicObject *shareObject = [UMShareMusicObject shareObjectWithTitle:res.title
                                                                         descr:res.desc
                                                                     thumImage:res.thumb];
    shareObject.musicUrl = res.urlString;
    messageObject.shareObject = shareObject;
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        if (self.finished) {
            self.finished(error, social);
        }
    }];
}

- (void)shareVideoTo:(nonnull id<ATSocialProtocol>)social res:(nonnull id<ATShareResProtocol>)res {
    UMSocialPlatformType platformType = [self.class umSocial:social];
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    UMShareVideoObject *shareObject = [UMShareVideoObject shareObjectWithTitle:res.title
                                                                         descr:res.desc
                                                                     thumImage:res.thumb];
    shareObject.videoUrl = res.urlString;
    messageObject.shareObject = shareObject;
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        if (self.finished) {
            self.finished(error, social);
        }
    }];
}

+ (BOOL)handleOpenURL:(NSURL *)url options:(NSDictionary*)options {
    return [[UMSocialManager defaultManager]  handleOpenURL:url options:options];
}

+ (void)globleConfig:(NSString *)umAppKey {
    [UMConfigure initWithAppkey:umAppKey channel:@"App Store"];
    [UMSocialGlobal shareInstance].isUsingWaterMark = NO;
    [UMSocialGlobal shareInstance].isUsingHttpsWhenShareContent = NO;
}

@end
