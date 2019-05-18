//
//  ATShare.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareDefine.h"
#import "ATShareRes.h"
#import "ATSocialProtocol.h"
#import "ATSocials.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ATShareFinishedBlock)(NSError * _Nullable error, id<ATSocialProtocol> _Nonnull social);
typedef void(^ATShareSocialBlock)(id<ATSocialProtocol> _Nonnull social);

@interface ATShare : NSObject

@property (strong, nonatomic, nonnull) id<ATShareResProtocol> res;
@property (copy, nonatomic, nullable) ATShareSocialBlock selected;
@property (copy, nonatomic, nullable) ATShareFinishedBlock finished;

- (void)addSocial:(nonnull id<ATSocialProtocol>)social;

- (void)show:(nonnull id<ATShareResProtocol>)res
    selected:(nullable ATShareSocialBlock)selected
    finished:(nullable ATShareFinishedBlock)finished;

- (void)showLandscape:(nonnull id<ATShareResProtocol>)res
             selected:(nullable ATShareSocialBlock)selected
             finished:(nullable ATShareFinishedBlock)finished;

- (void)hide;

- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished;

+ (BOOL)handleOpenURL:(NSURL *)url options:(NSDictionary*)options;
+ (void)globleConfig;

@end

NS_ASSUME_NONNULL_END
