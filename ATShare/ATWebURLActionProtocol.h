//
//  ATWebURLActionProtocol.h
//  ATShare
//
//  Created by ablett on 2019/5/28.
//

#import <Foundation/Foundation.h>
#import "ATShareDefine.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ATWebURLActionProtocol <NSObject>

@property (assign, nonatomic, readonly) enum ATWebURLActionType type;
@property (copy, nonatomic, nonnull) NSString *name;
@property (copy, nonatomic, nonnull) UIImage *icon;
@property (assign, nonatomic) BOOL enable;

@property (copy, nonatomic, nullable) void(^action)(__nonnull id<ATWebURLActionProtocol> *__nonnull urlAction);

@end

NS_ASSUME_NONNULL_END
