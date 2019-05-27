//
//  ATSocials.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATSocialProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATSocialWechat          : NSObject<ATSocialProtocol> @end
@interface ATSocialWechatTimeline  : NSObject<ATSocialProtocol> @end
@interface ATSocialQQ              : NSObject<ATSocialProtocol> @end
@interface ATSocialQZone           : NSObject<ATSocialProtocol> @end
@interface ATSocialSina            : NSObject<ATSocialProtocol> @end
@interface ATSocialCopy            : NSObject<ATSocialProtocol> @end

NS_ASSUME_NONNULL_END
