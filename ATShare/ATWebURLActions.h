//
//  ATWebURLActions.h
//  ATShare
//
//  Created by ablett on 2019/5/28.
//

#import <Foundation/Foundation.h>
#import "ATWebURLActionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATWebURLActionCopy           : NSObject <ATWebURLActionProtocol> @end
@interface ATWebURLActionRefresh        : NSObject <ATWebURLActionProtocol> @end
@interface ATWebURLActionOpenInSafari   : NSObject <ATWebURLActionProtocol> @end

NS_ASSUME_NONNULL_END
