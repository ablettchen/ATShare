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
@property (strong, nonatomic) NSMutableArray <id<ATSocialProtocol>> *socials;
@end

@implementation ATShare

#pragma mark - lifecycle

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    
    _socials = [NSMutableArray array];
    
    return self;
}

#pragma mark - privite

- (void)shareConfig:(nonnull id<ATSocialProtocol>)social {
    UMSocialPlatformType type = [self umSocial:social];
    [[UMSocialManager defaultManager] setPlaform:type
                                          appKey:social.appKey
                                       appSecret:social.appSecret
                                     redirectURL:social.redirectURL];
}

- (UMSocialPlatformType)umSocial:(nonnull id<ATSocialProtocol>)social {
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
        default:
            break;
    }
}

#pragma mark - public

- (void)addSocial:(__kindof NSObject<ATSocialProtocol> *)social {
    if ([self.socials containsObject:social]) {return;}
    [self.socials addObject:social];
}

- (void)show:(nonnull id<ATShareResProtocol>)res
    selected:(nullable ATShareSocialBlock)selected
    finished:(nullable ATShareFinishedBlock)finished {
    
    
    
}

- (void)showLandscape:(nonnull id<ATShareResProtocol>)res
             selected:(nullable ATShareSocialBlock)selected
             finished:(nullable ATShareFinishedBlock)finished {
    
}

- (void)hide {
}

- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished {
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
    UMSocialPlatformType platformType = [self umSocial:social];
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
    UMSocialPlatformType platformType = [self umSocial:social];
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
    UMSocialPlatformType platformType = [self umSocial:social];
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
    UMSocialPlatformType platformType = [self umSocial:social];
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

+ (void)globleConfig {
    [UMConfigure initWithAppkey:@"5835007ef43e48061900110b" channel:@"App Store"];
    [UMSocialGlobal shareInstance].isUsingWaterMark = YES;
    [UMSocialGlobal shareInstance].isUsingHttpsWhenShareContent = YES;
}

@end
