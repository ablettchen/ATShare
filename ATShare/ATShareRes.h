//
//  ATShareRes.h
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "ATShareResProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATShareResWeb    : NSObject<ATShareResProtocol> @end
@interface ATShareResImage  : NSObject<ATShareResProtocol> @end
@interface ATShareResAudio  : NSObject<ATShareResProtocol> @end
@interface ATShareResVideo  : NSObject<ATShareResProtocol> @end

NS_ASSUME_NONNULL_END
