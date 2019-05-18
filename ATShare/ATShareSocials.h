//
//  ATShareSocials.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATShareSocialWechat          : NSObject<ATShareSocialProtocol> @end
@interface ATShareSocialWechatTimeline  : NSObject<ATShareSocialProtocol> @end
@interface ATShareSocialQQ              : NSObject<ATShareSocialProtocol> @end
@interface ATShareSocialQZone           : NSObject<ATShareSocialProtocol> @end
@interface ATShareSocialSina            : NSObject<ATShareSocialProtocol> @end

NS_ASSUME_NONNULL_END
