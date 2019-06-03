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

@property (assign, nonatomic, readonly) enum ATSocialType type;
@property (copy, nonatomic, nonnull) NSString *name;
@property (copy, nonatomic, nonnull) UIImage *icon;

@property (assign, nonatomic) BOOL enable;

@property (copy, nonatomic, nonnull) NSString *appKey;
@property (copy, nonatomic, nonnull) NSString *appSecret;
@property (copy, nonatomic, nonnull) NSString *redirectURL;

@property (copy, nonatomic, nullable) void(^customAction)(id<ATSocialProtocol>  _Nullable obj);

@end



NS_ASSUME_NONNULL_END
