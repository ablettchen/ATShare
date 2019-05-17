//
//  ATShareSocials.h
//  ATShare
//
//  Created by ablett on 2019/5/17.
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
