//
//  ATShareDefin.h
//  ATShare
//
//  Created by ablett on 2019/5/17.
//

#ifndef ATShareDefin_h
#define ATShareDefin_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ATShareResource) {
    kATShareResourceURL = 1,    ///< URL
    kATShareResourceImage,      ///< Image
    kATShareResourceAudio,      ///< Audio
    kATShareResourceVideo,      ///< Video
};

typedef NS_OPTIONS(NSUInteger, ATShareSocial) {
    kATShareSocialWechat            = 1 << 1,   ///< Wechat
    kATShareSocialWechatTimeline    = 1 << 2,   ///< Wechat timeline
    kATShareSocialQQ                = 1 << 3,   ///< QQ
    kATShareSocialQZone             = 1 << 4,   ///< QZone
    kATShareSocialSina              = 1 << 5,   ///< Sina
};

typedef NS_ENUM(NSUInteger, ATUrlAction) {
    kATUrlActionCopy = 1,       ///< Copy
    kATUrlActionRefresh,        ///< Refresh
    kATUrlActionOpenInSafari,   ///< Open in safari
};

NS_INLINE NSString *at_shareResourceDescription (ATShareResource resource){
    switch (resource) {
        case kATShareResourceURL:
            return @"URL";
        case kATShareResourceImage:
            return @"Image";
        case kATShareResourceAudio:
            return @"Audio";
        case kATShareResourceVideo:
            return @"Video";
        default:
            return @"Unknow";
    }
}

NS_INLINE NSString *at_shareSocialDescription (ATShareSocial social){
    switch (social) {
        case kATShareSocialWechat:
            return @"Wechat";
        case kATShareSocialWechatTimeline:
            return @"WechatTimeline";
        case kATShareSocialQQ:
            return @"QQ";
        case kATShareSocialQZone:
            return @"QZone";
        case kATShareSocialSina:
            return @"Sina";
        default:
            return @"Unknow";
    }
}

#endif /* ATShareDefin_h */
