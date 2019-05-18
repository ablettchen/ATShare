//
//  ATShare.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareDefin.h"
#import "ATShareMessage.h"
#import "ATShareProtocol.h"
#import "ATShareSocials.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ATShareFinishedBlock)(NSError * _Nullable error, id<ATShareSocialProtocol> _Nonnull social);
typedef void(^ATShareSocialBlock)(id<ATShareSocialProtocol> _Nonnull social);

@interface ATShare : NSObject

// umeng appid appkey
// social appid appkey

@property (strong, nonatomic, nonnull) ATShareMessage *message;
@property (copy, nonatomic, nullable) ATShareSocialBlock selected;
@property (copy, nonatomic, nullable) ATShareFinishedBlock finished;

- (void)addSocial:(nonnull id<ATShareSocialProtocol>)social;

- (void)show:(nonnull ATShareMessage *)message
    selected:(nullable ATShareSocialBlock)selected
    finished:(nullable ATShareFinishedBlock)finished;

- (void)showLandscape:(nonnull ATShareMessage *)message
                selected:(nullable ATShareSocialBlock)selected
             finished:(nullable ATShareFinishedBlock)finished;

- (void)hide;

- (void)shareToWechat:(nonnull ATShareMessage *)message;
- (void)shareToWechatTimeline:(nonnull ATShareMessage *)message;
- (void)shareToQQ:(nonnull ATShareMessage *)message;
- (void)shareToQZone:(nonnull ATShareMessage *)message;
- (void)shareToSina:(nonnull ATShareMessage *)message;

@end

NS_ASSUME_NONNULL_END
