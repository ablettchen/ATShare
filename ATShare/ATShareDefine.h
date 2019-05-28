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

typedef NS_ENUM(NSUInteger, ATSocialType) {
    kATSocialTypeWechat = 1,     ///< Wechat
    kATSocialTypeWechatTimeline, ///< Wechat timeline
    kATSocialTypeQQ,             ///< QQ
    kATSocialTypeQZone,          ///< QZone
    kATSocialTypeSina,           ///< Sina
    kATSocialTypeCustom,         ///< Custom
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

#endif /* ATShareDefin_h */
