//
//  ATShareDefine.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#ifndef ATShareDefin_h
#define ATShareDefin_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <ATCategories/ATCategories.h>

NS_INLINE NSBundle *atshare_bundle(void) {
    return [NSBundle at_bundleForClass:NSClassFromString(@"ATShare") resource:@"ATShare" ofType:@"bundle"];
}

NS_INLINE UIImage *atshare_imageNamed(NSString *name) {
    return [atshare_bundle() at_imageNamed:name];
}

typedef NS_ENUM(NSUInteger, ATShareResType) {
    ATShareResTypeWeb = 1,    ///< URL
    ATShareResTypeImage,      ///< Image
    ATShareResTypeAudio,      ///< Audio
    ATShareResTypeVideo,      ///< Video
};

typedef NS_ENUM(NSUInteger, ATSocialType) {
    kATSocialTypeWechat = 1,     ///< Wechat
    kATSocialTypeWechatTimeline, ///< Wechat timeline
    kATSocialTypeQQ,             ///< QQ
    kATSocialTypeQZone,          ///< QZone
    kATSocialTypeSina,           ///< Sina
    kATSocialTypeCustom,         ///< Custom, 如APP内部分享
};

typedef NS_ENUM(NSUInteger, ATWebURLActionType) {
    kATWebURLActionTypeCopy = 1,       ///< Copy
    kATWebURLActionTypeRefresh,        ///< Refresh
    kATWebURLActionTypeOpenInSafari,   ///< Open in safari
    kATWebURLActionTypeCustom,         ///< Custom，如收藏
};

NS_INLINE NSString *at_shareResDescription (ATShareResType type){
    switch (type) {
        case ATShareResTypeWeb:
            return @"Web";
        case ATShareResTypeImage:
            return @"Image";
        case ATShareResTypeAudio:
            return @"Audio";
        case ATShareResTypeVideo:
            return @"Video";
        default:
            return @"Unknow";
    }
}

NS_INLINE NSString *at_socialDescription (ATSocialType type){
    switch (type) {
        case kATSocialTypeWechat:
            return @"Wechat";
        case kATSocialTypeWechatTimeline:
            return @"Wechat Timeline";
        case kATSocialTypeQQ:
            return @"QQ";
        case kATSocialTypeQZone:
            return @"QZone";
        case kATSocialTypeSina:
            return @"Sina";
        case kATSocialTypeCustom:
            return @"Custom";
        default:
            return @"Unknow";
    }
}

NS_INLINE NSString *at_urlActionDescription (ATWebURLActionType type){
    switch (type) {
        case kATWebURLActionTypeCopy:
            return @"Copy";
        case kATWebURLActionTypeRefresh:
            return @"Refresh";
        case kATWebURLActionTypeOpenInSafari:
            return @"Open in Safari";
        case kATWebURLActionTypeCustom:
            return @"Custom";
        default:
            return @"Unknow";
    }
}

#endif /* ATShareDefin_h */
