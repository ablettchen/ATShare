//
//  ATShareProtocol.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareDefin.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ATShareSocialProtocol <NSObject>

@property (assign, nonatomic, readonly) ATShareSocial social;
@property (copy, nonatomic, readonly) NSString *name;
@property (copy, nonatomic, readonly) NSString *icon;
@property (assign, nonatomic, readonly) BOOL enable;

@end



NS_ASSUME_NONNULL_END
