//
//  ATShareProtocol.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareDefine.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ATSocialProtocol <NSObject>

@property (assign, nonatomic, readonly) ATSocialType type;
@property (copy, nonatomic, readonly, nonnull) NSString *name;
@property (copy, nonatomic, readonly, nonnull) NSString *icon;
@property (assign, nonatomic, readonly) BOOL enable;

@property (copy, nonatomic, nonnull) NSString *appKey;
@property (copy, nonatomic, nonnull) NSString *appSecret;
@property (copy, nonatomic, nonnull) NSString *redirectURL;

@end



NS_ASSUME_NONNULL_END