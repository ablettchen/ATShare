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
#import "ATShareResProtocol.h"
#import "ATSocialProtocol.h"
#import "ATWebURLActionProtocol.h"
#import "ATShareRes.h"
#import "ATSocials.h"
#import "ATWebURLActions.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ATShareFinishedBlock)(NSError * _Nullable error, id<ATSocialProtocol> _Nullable social);

@interface ATShare : NSObject

@property (strong, nonatomic, readonly) NSMutableArray <id<ATSocialProtocol>> *socials;
@property (strong, nonatomic, readonly) NSMutableArray <id<ATSocialProtocol>> *validSocials;

@property (strong, nonatomic, readonly) NSMutableArray <id<ATWebURLActionProtocol>> *webURLActions;
@property (strong, nonatomic, readonly) NSMutableArray <id<ATWebURLActionProtocol>> *validWebURLActions;

@property (strong, nonatomic, nonnull) id<ATShareResProtocol> res;
@property (copy, nonatomic, nullable) ATShareFinishedBlock finished;

- (void)addSocial:(nonnull id<ATSocialProtocol>)social;
- (void)addWebURLAction:(nonnull id<ATWebURLActionProtocol>)webURLAction;

- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished;

+ (BOOL)handleOpenURL:(NSURL *)url options:(NSDictionary*)options;
+ (void)globleConfig:(NSString *)umAppKey;

@end

NS_ASSUME_NONNULL_END
