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

typedef NS_ENUM(NSUInteger, ATShareResType) {
    ATShareResTypeWeb = 1,    ///< URL
    ATShareResTypeImage,      ///< Image
    ATShareResTypeAudio,      ///< Audio
    ATShareResTypeVideo,      ///< Video
};

typedef NS_OPTIONS(NSUInteger, ATSocialType) {
    kATSocialTypeWechat            = 1 << 1,   ///< Wechat
    kATSocialTypeWechatTimeline    = 1 << 2,   ///< Wechat timeline
    kATSocialTypeQQ                = 1 << 3,   ///< QQ
    kATSocialTypeQZone             = 1 << 4,   ///< QZone
    kATSocialTypeSina              = 1 << 5,   ///< Sina
};

typedef NS_ENUM(NSUInteger, ATUrlAction) {
    kATUrlActionCopy = 1,       ///< Copy
    kATUrlActionRefresh,        ///< Refresh
    kATUrlActionOpenInSafari,   ///< Open in safari
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
            return @"wechat";
        case kATSocialTypeWechatTimeline:
            return @"wechattimeline";
        case kATSocialTypeQQ:
            return @"qq";
        case kATSocialTypeQZone:
            return @"qzone";
        case kATSocialTypeSina:
            return @"sina";
        default:
            return @"unknow";
    }
}

#endif /* ATShareDefin_h */
