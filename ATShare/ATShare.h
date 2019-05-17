//
//  ATShare.h
//  ATShare
//
//  Created by ablett on 2019/5/17.
//

#import <Foundation/Foundation.h>
#import "ATShareDefin.h"
#import "ATShareMessage.h"
#import "ATShareProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ATShareFinishedBlock)(NSError *error, ATShareMessage *message);
typedef void(^ATShareSocialBlock)(NSError *error, ATShareMessage *message);

@interface ATShare : NSObject

@property (strong, nonatomic, nonnull) ATShareMessage *message;
@property (copy, nonatomic, nullable) ATShareFinishedBlock finished;

- (void)addSocial:(__kindof NSObject<ATShareSocialProtocol> *)social;

- (void)show:(nonnull ATShareMessage *)message
       leave:(nullable ATShareSocialBlock)leave
    finished:(nullable ATShareFinishedBlock)finished;

- (void)showLandscape:(nonnull ATShareMessage *)message
                leave:(nullable ATShareSocialBlock)leave
             finished:(nullable ATShareFinishedBlock)finished;

- (void)hide;

- (void)shareToWechat;
- (void)shareToWechatTimeline;
- (void)shareToQQ;
- (void)shareToQZone;
- (void)shareToSina;

@end

NS_ASSUME_NONNULL_END
