//
//  ATShare.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATShare.h"
#if __has_include(<UMShare/UMShare.h>)
#import <UMShare/UMShare.h>
#else
#import "UMShare.h"
#endif

#if __has_include(<UMCommon/UMCommon.h>)
#import <UMCommon/UMCommon.h>
#else
#import "UMCommon.h"
#endif

#if __has_include(<ATCategories/ATCategories.h>)
#import <ATCategories/ATCategories.h>
#else
#import "ATCategories.h"
#endif

@interface ATShare ()
@property (strong, nonatomic, readwrite) NSMutableArray <id<ATSocialProtocol>> *socials;

@end

@implementation ATShare

- (void)dealloc {
#ifdef DEBUG
    NSLog(@"%d - %s", (int)__LINE__, __func__);
#endif
}

#pragma mark - lifecycle

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    _socials = [NSMutableArray array];
    _validSocials = [NSMutableArray array];
    _webURLActions = [NSMutableArray array];
    _validWebURLActions = [NSMutableArray array];
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
    
    [self shareConfig:social];
    
    if (![self.socials containsObject:social]) {
        [self.socials addObject:social];
    }
    
    if (![self.validSocials containsObject:social] && social.enable) {
        [self.validSocials addObject:social];
    }
}

- (void)addWebURLAction:(nonnull id<ATWebURLActionProtocol>)webURLAction {
    if (![self.webURLActions containsObject:webURLAction]) {
        [self.webURLActions addObject:webURLAction];
    }
    
    if (![self.validWebURLActions containsObject:webURLAction] && webURLAction.enable) {
        [self.validWebURLActions addObject:webURLAction];
    }
}

- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished {
    
    self.finished = finished;
    
    /*
    if (!social.enable) {
        NSString *msg = [NSString stringWithFormat:@"%@ is disabled", social.description];
        NSError *error = [NSError errorWithDomain:@"com.ablett.atshare" code:404 userInfo:@{NSLocalizedDescriptionKey:msg}];
        if (self.finished) {self.finished(error, social);}
        return;
    }
     */
    
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
    @weakify(self);
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        @strongify(self);
        if (self.finished) {self.finished(error, social);}
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
    @weakify(self);
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        @strongify(self);
        if (self.finished) {self.finished(error, social);}
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
    @weakify(self);
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        @strongify(self);
        if (self.finished) {self.finished(error, social);}
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
    @weakify(self);
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        @strongify(self);
        if (self.finished) {self.finished(error, social);}
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
